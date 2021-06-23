/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.UnsupportedEncodingException;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import util.EmailUtil;

/**
 *
 * @author Win 10
 */
@Controller
@RequestMapping(value="/email",method = RequestMethod.POST)
public class SendMailController {
    @RequestMapping(value="/sendEmail")
    public ModelAndView doSendEmail(HttpServletRequest request) throws MessagingException, UnsupportedEncodingException{
        ModelAndView model=new ModelAndView("Fontend/Result");
        request.setCharacterEncoding("UTF-8");
        //Lay dia chi nguoi nhan
        String recipientAddress=request.getParameter("recipient");
        //Lay subject cua mail
        String subject=request.getParameter("subject");
        String message=request.getParameter("message");
        EmailUtil.sendMail(recipientAddress, subject, message);
        return model;
    }
}
