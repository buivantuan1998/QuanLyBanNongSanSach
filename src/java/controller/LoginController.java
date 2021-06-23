/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.LoginModel;
import model.UserModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import util.HashPassword;

/**
 *
 * @author Win 10
 */
@Controller
public class LoginController {

    private LoginModel loginModel;
    private UserModel userModel;
    private HashPassword hassPassword;

    public LoginController() {
        loginModel = new LoginModel();
        userModel = new UserModel();
        hassPassword=new HashPassword();
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView initLogin() {
        ModelAndView model = new ModelAndView("Fontend/Login");
        User user = new User();
        model.getModelMap().put("account", user);
        return model;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public void login(@ModelAttribute("account") User user, ModelMap mm, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html;charset=UTF-8");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String hasspass=hassPassword.getMD5(password);
        int status = loginModel.checkLogin(email, hasspass);

        session = request.getSession();
//        Cookie cookie = null;
//        Cookie[] cookies = request.getCookies();
        if (status == 1) {
            session.setAttribute("account", user.getEmail());
//            Cookie emailLogin = new Cookie("email", email);
//            Cookie passLogin = new Cookie("pass", password);
//            emailLogin.setMaxAge(60 * 60 * 24);
//            passLogin.setMaxAge(60 * 60 * 24);
//            response.addCookie(emailLogin);
//            response.addCookie(passLogin);
//            String userName = loginModel.getUserNameByEmail(emailLogin.getValue());
            String userName = loginModel.getUserNameByEmail(email);
            session.setAttribute("userName", userName);
//            RequestDispatcher rd = request.getRequestDispatcher("homeFontend.htm");
//            rd.forward(request, response);
            String url = request.getContextPath() + "/homeFontend.htm";
            response.sendRedirect(url);
        } else {
            String message = "Thông tin đăng nhập không chính xác.";
            mm.put("messageLogin", message);
            response.sendRedirect("initLogin.htm");
        }
    }

    @RequestMapping(value = "/logout")
    public void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            if (request.getParameter("logout") != null) {
                if (request.getParameter("logout").equals("ok")) {
                    request.removeAttribute("user");
                    request.removeAttribute("pass");
                    HttpSession session = request.getSession();
                    session.invalidate();
                    response.sendRedirect("homeFontend.htm");
                }
            }
        } finally {
            out.close();
        }
    }
}
