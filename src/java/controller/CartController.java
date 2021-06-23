/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Cart;
import entity.Products;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import model.ProductModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Win 10
 */
@Controller
public class CartController {

    private ProductModel productModel;

    public CartController() {
        productModel = new ProductModel();
    }

    @RequestMapping(value = "/addCart")
    public ModelAndView addCart(@RequestParam("Id") int id, @RequestParam(value = "quantity", required = false) int quantity,
            HttpSession session, HttpServletRequest request) throws UnsupportedEncodingException {
        ModelAndView model = new ModelAndView("Fontend/Cart");
        String note = "";
        if (request.getParameter("option-0") != null && request.getParameter("option-1") != null) {
            request.setCharacterEncoding("UTF-8");
            note = "Size:" + request.getParameter("option-1") + "; Color:" + request.getParameter("option-0");
        }
        //Lay danh sach san pham cua khach hang trong session
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        if (listCart == null) {
            //trong session khong co san pham nao
            listCart = new ArrayList<>();
            listCart.add(new Cart(productModel.getProductById(id), quantity, note));
        } else {
            //trong session da ton tai san pham
            boolean flag = false;
            //kiem tra xem trong session co san pham nao trung vs san pham duoc chon hay khong.
            for (Cart c : listCart) {
                if (c.getProduct().getId() == id) {
                    int a = c.getQuantity();
                    c.setQuantity(a + quantity);
                    flag = true;
                    break;
                }
            }
            if (!flag) {
                listCart.add(new Cart(productModel.getProductById(id), quantity, note));
            }
        }
        //dua gio hang len session
        session.setAttribute("listCart", listCart);
        session.setAttribute("total", getTotal(listCart));
        return model;
    }

    //tinh tong tien trong gio hang
    public int getTotal(List<Cart> listCart) {
        int total = 0;
        for (Cart c : listCart) {
            if (c.getProduct().getDiscountId() == 0) {
                total += c.getQuantity() * c.getProduct().getPriceOutput();
            } else {
                total += c.getQuantity() * c.getProduct().getPriceOutput();
            }
        }
        return total;
    }

    //xoa san pham trong gio hang
    @RequestMapping(value = "/remove", method = RequestMethod.GET)
    public ModelAndView remove(@RequestParam("Id") int id, HttpSession session) {
        ModelAndView model = new ModelAndView("Fontend/Cart");
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        if (listCart != null) {
            for (int i = 0; i < listCart.size(); i++) {
                if (listCart.get(i).getProduct().getId() == id) {
                    listCart.remove(i).getProduct().getId();
                    break;
                }
            }
        }
        session.setAttribute("listCart",listCart);
        session.setAttribute("total",getTotal(listCart));
        return model;
    }
    
    @RequestMapping(value = "/updateCart")
    public ModelAndView update(HttpServletRequest request, HttpSession session,ModelMap mm) {
        ModelAndView model = new ModelAndView("Fontend/Cart");

        // lay dssp khach hang trong session 
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        // lay danh sach sl san pham muon mua
        String[] arrQuantity = request.getParameterValues("Lines");

        for (int i = 0; i < listCart.size(); i++) {
            Products p=new Products();
            listCart.get(i).setQuantity(Integer.parseInt(arrQuantity[i]));

//          
            if (Integer.parseInt(arrQuantity[i]) < 1) {
                listCart.get(i).setQuantity(1);
            }
            if(listCart.get(i).getQuantity()>p.getQuantity()){
                mm.put("messageQuantity", "vượt quá số lượng trong kho");
            }
        }
        // luu ds sp va tong tien
        session.setAttribute("listCart", listCart);
        session.setAttribute("total", getTotal(listCart));
        return model;
    }
    
    //xoa tat ca gio hang
    @RequestMapping(value = "/removeAllCart", method = RequestMethod.GET)
    public ModelAndView removeAllCart(HttpSession session) {
        ModelAndView model = new ModelAndView("Fontend/Cart");
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        System.out.println(listCart.size());
        if (listCart != null) {
            listCart.removeAll(listCart);
        }
        
        session.setAttribute("listCart",listCart);
        session.setAttribute("total",getTotal(listCart));
        return model;
    }
    
    @RequestMapping(value="/MyCart")
    public ModelAndView MyCart(HttpSession session,ModelMap mm){
        ModelAndView model=new ModelAndView("Fontend/MyCart");
        List<Cart> listCart=(List<Cart>) session.getAttribute("listCart");
        if(listCart==null){
            mm.put("message", "Không có sản phẩm nào trong giỏ hàng");
        }else{
            model.getModelMap().put("list", listCart);
        }
        return model;
    }
}
