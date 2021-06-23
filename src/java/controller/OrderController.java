/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dto.OrderDetailDTO;
import entity.Cart;
import entity.Order;
import entity.OrderDetail;
import entity.User;
import java.util.List;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.OrderModel;
import model.UserModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import util.EmailUtil;

/**
 *
 * @author Win 10
 */
@Controller
public class OrderController {

    private CartController cartController;
    private OrderModel orderModel;
    private UserModel userModel;

    public OrderController() {
        cartController = new CartController();
        orderModel = new OrderModel();
        userModel = new UserModel();
    }

    @RequestMapping(value = "/Payment",method=RequestMethod.POST)
    public ModelAndView order(HttpServletRequest request, HttpSession session) throws MessagingException {
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        String b = "<table border ='1'><thead><tr><th>Tên sản phẩm</th> <th></th><th>Giá</th><th>Số lượng</th> <th>Tổng</th></tr> </thead> <tbody>";
        for (Cart listCart1 : listCart) {
            b = b + "<tr> <td>" + listCart1.getProduct().getProductName() + "</td>";
            b = b + " <td>" + listCart1.getNote() + "</td>";
//            if (listCart1.getProduct().getDiscountId()== 0) {
                b = b + "<td>" + listCart1.getProduct().getPriceOutput() + "</td>";
                b = b + "<td>" + listCart1.getQuantity() + "</td>";
                b = b + "<td>" + listCart1.getProduct().getPriceOutput() * listCart1.getQuantity() + " </td>";
//            } else {
//                b = b + "<td>" + listCart1.getProduct().getPriceDiscount() + "</td>";
//                b = b + "<td>" + listCart1.getQuantity() + "</td>";
//                b = b + "<td>" + listCart1.getProduct().getPriceDiscount() * listCart1.getQuantity() + "</td>";
//            }
            b = b + "</tr>";

        }
        b = b + "</tbody></table>" + "Tiền ship: Miễn phí <br/>" + "Tổng cộng:" + cartController.getTotal(listCart);

        ModelAndView model = new ModelAndView("Fontend/CheckoutSuccess");
        String name = (String) session.getAttribute("account");
        User us = userModel.getUserByEmail(name);
        float total = (Integer) session.getAttribute("total");
        int userId=us.getId();
        String orderName=us.getUserName();
        String phone=request.getParameter("BillingAddress.Phone");
        String email=request.getParameter("BillingAddress.Email");
        String address=request.getParameter("BillingAddress.Address");
        String description=request.getParameter("description");
        Order order = new Order();
        order.setTotalAmount(total);
        order.setUserId(userId);
        order.setOrderName(orderName);
        order.setPhoneNumber(phone);
        order.setEmail(email);
        order.setAddress(address);
//        order.setDescription(description);
        orderModel.insertOrder(order);
        model.getModelMap().put("orderuser", order);
        model.getModelMap().put("us", us);
        model.getModelMap().put("listCart", listCart);
        model.getModelMap().put("total", total);
        int orderIdNew = orderModel.getOrderIdNew();
        for (Cart cart : listCart) {
            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setOrderId(orderIdNew);
            orderDetail.setProductId(cart.getProduct().getId());
//            if(cart.getProduct().getDiscountId()==0){
//                orderDetail.setPrice(cart.getProduct().getPriceOutput());
//            }else{
//                orderDetail.setPrice(cart.getProduct().getPriceDiscount());
//            }
            orderDetail.setPrice(cart.getProduct().getPriceOutput());
            orderDetail.setAmount(cart.getQuantity()*orderDetail.getPrice());
            orderDetail.setQuantity(cart.getQuantity());
            orderDetail.setNote(description);
            orderModel.insertOrderDetail(orderDetail);
            orderModel.updateBuyItem(cart.getProduct().getId(), cart.getQuantity());
        }

        if(us.getEmail()==null){
            us.setEmail(request.getParameter("email"));
        }
//        us.setEmail(request.getParameter("email"));
        request.setAttribute("messageSuc", "Đặt hàng thành công!");
        EmailUtil.sendMail(us.getEmail(), "FreshFood Shop. Xác nhận đặt hàng", "Đặt hàng thành công. Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi.Đơn hàng của bạn" + b);
        session.removeAttribute("listCart");
        session.removeAttribute("total");
        return model;
    }
    
    @RequestMapping(value = "/orderDetail", method = RequestMethod.GET)
    public ModelAndView orderDetail(@RequestParam("Id") int id) {
        ModelAndView model = new ModelAndView("Admin/OrderDetail");
        List<OrderDetailDTO> orderDetail=orderModel.getOrderDetail(id);
        model.getModelMap().put("orderDetail", orderDetail);
        return model;
    }
}
