/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.User;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.UserModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import util.CheckEmail;

/**
 *
 * @author Win 10
 */
@Controller
public class RegisterController {
    private UserModel userModel;
    private CheckEmail checkEmail;

    public RegisterController() {
        userModel=new UserModel();
        checkEmail=new CheckEmail();
        
    }
    
    @RequestMapping(value = "/initRegister")
    public ModelAndView initRegister() {
        ModelAndView model = new ModelAndView("Fontend/Register");
        User newUser = new User();
        model.getModelMap().put("account", newUser);
        return model;
    }
    @RequestMapping(value = "register")
    public ModelAndView register(@ModelAttribute("account") User user,ModelMap mm, HttpSession session,HttpServletRequest request,HttpServletResponse response) throws IOException {
        String email=request.getParameter("email");
         ModelAndView model = new ModelAndView("Fontend/Login");
        if (checkEmail.checkEmailExist(email)==0) {
            mm.put("message", "Email đã được dùng. Vui lòng điền email khác để đăng ký");
            model = new ModelAndView("Fontend/Register");
        }else{
            userModel.register(user);
            response.sendRedirect("homeFontend.htm");
        }
        return model;
    }
}
