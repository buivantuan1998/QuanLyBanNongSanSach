/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.User;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AccountModel;
import model.LoginModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import util.HashPassword;

/**
 *
 * @author Win 10
 */
@Controller
public class HomeBackendController {
    private LoginModel loginModel;
    private HashPassword hassPassword;
    public HomeBackendController() {
        loginModel = new LoginModel();
        hassPassword=new HashPassword();
    }
    
    @RequestMapping(value="/LoginAdmin",method = RequestMethod.GET)
    public ModelAndView InitLogin(){
        ModelAndView model=new ModelAndView("Admin/Login");
        User user=new User();
        model.addObject("user", user);
        return model;
    }
    @RequestMapping(value="/LoginAdmin",method=RequestMethod.POST)
    public String Login(@ModelAttribute("user") User user,ModelMap mm,HttpSession session) throws IOException{
        int result=0;
        user.setPassword(hassPassword.getMD5(user.getPassword()));
        result=loginModel.checkLoginAdmin(user);
        if(result==1){
            user.setUserName(loginModel.getUserNameByEmail(user.getEmail()));
            session.setAttribute("user", user.getUserName());
            return "redirect:HomeBackend.htm";
        }else{
            String message = "Thông tin đăng nhập không chính xác.";
            mm.put("message", message);
            return "Admin/Login";
        }
    }
    @RequestMapping(value="/HomeBackend")
    public ModelAndView HomeBackend(HttpSession session){
        ModelAndView model;
        if(AccountModel.CheckUrl(session)){
            model=new ModelAndView("Admin/index");
            return model;
        } else {
            model = new ModelAndView("Admin/Login");
            User user =new User();
            model.getModelMap().put("user", user);
        }
        return model;
    }
    
}
