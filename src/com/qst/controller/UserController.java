package com.qst.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.qst.service.UserService;
import com.qst.vo.User;

@Controller
@RequestMapping("/user")
public class UserController {

	UserService service = new UserService();
	
	@ModelAttribute("user")
	public User init() {
		System.out.println("初始化");
		return new User();
	}
	
	@RequestMapping(value="/{path}",method= {RequestMethod.GET})
	public String toPath(@PathVariable String path) {
		return path;
	}
	@RequestMapping("/regist")
	public String regist(User user,Model model) throws Exception{
		try {
			service.add(user);
		} catch (Exception e) {
			model.addAttribute("error", "注册失败");
			return "forward:/regist.jsp";
		}
		return "redirect:/login.jsp";
		//不需要传值
	}
	
	@RequestMapping("/login")
	public String login(String uname,String upass,HttpSession session,Model model) {
		System.out.println(uname+upass);
		User user= service.selectLogin(uname,upass);
		if(user!=null) {
			session.setAttribute("SESSIONUSER",user);
			return "main";
		}else {
			model.addAttribute("error", "用户名或登录密码错误");
			return"forward:/login.jsp";
		}
	}
	@RequestMapping("/list")
	public ModelAndView list() {
		ModelAndView mv = new ModelAndView();
		List<User> list = service.selectAll();
		mv.addObject("userlist", list);
		//request.setAttribute("userlist",list);
		mv.setViewName("list");//request.getRequestDispatcher("/list.jsp");
		return mv;
	}
	
	@RequestMapping("/list2")
	public String list2(Model model) {
		List<User> list = service.selectAll();
		model.addAttribute("userlist", list);
		return "list";
		//WEB-INF/jsp/list.jsp
	}
	
	@RequestMapping("/list3")
	public String list3(@ModelAttribute("userlist") List<User> list) {
		list = service.selectAll();
		//model.addAttribute("userlist", list);
		return "list";//WEB-INF/jsp/list.jsp
	}
	
	@RequestMapping("/add")
	public ModelAndView add(User u) throws Exception{
		ModelAndView mv = new ModelAndView();
		try{
			service.add(u);
		}catch(Exception e) {
			throw e;
		}
		mv.setViewName("list");//request.getRequestDispatcher("/list.jsp");
		return mv;
	}
	
	@RequestMapping("/delete")
	public ModelAndView delete(int uid) throws Exception{
		ModelAndView mv = new ModelAndView();
		try{
			service.delete(uid);;
		}catch(Exception e) {
			throw e;
		}
		mv.setViewName("list");
		return mv;
	}
	
	@RequestMapping("/update")
	public ModelAndView update(User uid) throws Exception{
		ModelAndView mv = new ModelAndView();
		try{
			service.update(uid);
		}catch(Exception e) {
			throw e;  
		}
		mv.setViewName("list");
		return mv;
	}
	
}
