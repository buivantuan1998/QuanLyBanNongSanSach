/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Cart;
import entity.Payment;
import entity.User;
import java.util.List;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import model.UserModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Win 10
 */
@Controller
public class PaymentController {
    private CartController cartController;
    private UserModel userModel;

    public PaymentController() {
        cartController = new CartController();
        userModel = new UserModel();
    }
    @RequestMapping(value = "/Payment",method=RequestMethod.GET)
    public ModelAndView checkout(HttpSession session, ModelMap mm,HttpServletRequest request){
        ModelAndView model;
        List<Cart> listCart=(List<Cart>) session.getAttribute("listCart");
        int paymentAmount = cartController.getTotal(listCart);
        String email = (String) session.getAttribute("account");
        if(email!=null){
            model=new ModelAndView("Fontend/Checkout");
            User user=userModel.getUserByEmail(email);
            Payment payment=new Payment();
            model.getModelMap().put("payment", payment);
            model.getModelMap().put("us", user);
            model.getModelMap().put("total", paymentAmount);
        }else{
            model=new ModelAndView("Fontend/Login");
            mm.put("tb", "Bạn cần phải đăng nhập trước khi thanh toán");
            User user=new User();
            model.getModelMap().put("account", user);
            model.getModelMap().put("acction", "payment");
        }
        return model;
    }
}
