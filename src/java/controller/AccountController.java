/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Order;
import entity.User;
import java.util.List;
import javax.servlet.http.HttpSession;
import model.OrderModel;
import model.UserModel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Win 10
 */
@Controller
public class AccountController {
    private UserModel userModel;
    private OrderModel orderModel;
    public AccountController() {
        userModel=new UserModel();
        orderModel=new OrderModel();
    }
    
    @RequestMapping(value="/account")
    public ModelAndView account(HttpSession session){
        ModelAndView model=new ModelAndView("Fontend/Account");
        String email=(String) session.getAttribute("account");
        User userAct=userModel.getUserByEmail(email);
        List<Order> orderInfo=orderModel.GetOrderByUser(userAct.getId());
        System.out.println(userAct.getId());
        model.getModelMap().put("accountAct", userAct);
        model.getModelMap().put("orderInfo", orderInfo);
        return model;
    }
}
