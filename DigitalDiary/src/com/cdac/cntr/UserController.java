package com.cdac.cntr;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.MailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.User;
import com.cdac.service.UserService;
import com.cdac.valid.UserValidator;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private UserValidator userValidator;
	@Autowired
	private MailSender mailSender;
	
	@RequestMapping(value = "/prep_reg_form.htm",method = RequestMethod.GET)
	public String prepRegForm(ModelMap map) {
		map.put("user", new User());
		return "reg_form";
	}
	
	@RequestMapping(value = "/reg.htm",method = RequestMethod.POST)
	public String register(User user,BindingResult result,ModelMap map,HttpSession session) {
		
		userValidator.validate(user, result);
		if(result.hasErrors()) {
			return "reg_form";
		}
		
		userService.addUser(user);
		return "index";
	}
	
	@RequestMapping(value = "/prep_log_form.htm",method = RequestMethod.GET)
	public String prepLogForm(ModelMap map) {
		map.put("user", new User());
		return "login_form";
	}
	
	@RequestMapping(value = "/login.htm",method = RequestMethod.POST)
	public String login(User user,ModelMap map,HttpSession session) {
		boolean b = userService.findUser(user);
		if(b) {
			session.setAttribute("user", user);
			return "home";
		}else {
			map.put("user", new User());
			return "login_form";
		}
	}
	@RequestMapping(value = "/forgot_pass.htm",method = RequestMethod.POST)
	public String forgotPassword(@RequestParam String emailId,ModelMap map) {		
		String pass = userService.forgotPassword(emailId);
		String msg = "You are not registered";
		if(pass!=null) {	
			
			SimpleMailMessage message = new SimpleMailMessage();  
	        message.setFrom("ashishkamthe111@gmail.com");  
	        message.setTo(emailId);  
	        message.setSubject("Your password");  
	        message.setText(pass);  
	        //sending message   
	        mailSender.send(message);
			msg = "Check the mail for password";
		}
		map.put("msg", msg);
		return "index";
	}
	
}