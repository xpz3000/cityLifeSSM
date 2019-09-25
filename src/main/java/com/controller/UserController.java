package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pojo.Info;
import com.pojo.User;
import com.service.UserService;

@Controller
@RequestMapping("")
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("")
	public String index(){
		return "index";
	}
	
	/**
	 * 
	 * @注册前验证用户是否存在
	 */
	
	@RequestMapping("regist")
	public ModelAndView regist(){
		List<User> L= userService.regist();
		ModelAndView mav=new ModelAndView("regist");
		mav.addObject("userName",L);
		return mav;
	}
	
	/**
	 * 
	 * @保存用户到数据库
	 */
	 
	@RequestMapping("registTosql")
	public String registTosql(User user){
		userService.registTosql(user);
		return "success";
	}
	
	/**
	 * 
	 * @登录
	 */
	@RequestMapping("login")
	public String login(User user,HttpServletRequest request){
		
		HttpSession session = request.getSession(true);
		user=userService.login(user);
		if (user!=null) {
			session.setAttribute("session", user.getUser_type());
			return "indextemp"; 
			
		}else{
		request.setAttribute("msg", "用户名或者密码错误");
		request.setAttribute("msg2", "fail");
		return "index";
		
		}		
	}
	
	/**
	 * 
	 * @发布信息
	 */
	@RequestMapping("addInfo")
	public @ResponseBody String AddInfo(@ModelAttribute Info info){
		
		userService.AddInfo(info);
		return "1";		
	}
	

	/**
	 * 
	 * @查询所有用户
	 */
	@RequestMapping("showAllUser")
	public  ModelAndView showAllUser(){
		List<User> U=userService.showAllUser();

		ModelAndView mav=new ModelAndView("show/showUser");
		mav.addObject("users",U);
		return mav;
	}
	

	/**
	 * 
	 * @根据ID 查用户
	 */
	@RequestMapping("showUserById")
	public ModelAndView showUserById(int id){
		List<User> U=userService.showUserById(id);
		ModelAndView mav=new ModelAndView("show/showUserById");
		mav.addObject("users",U);
		return mav;
	}
	
	/**
	 * 
	 * @删除用户
	 */
	@RequestMapping("removeUser")
	public String removeUser(int id){
		userService.removeUser(id);
		return "success";
		
	}
	
	/**
	 * 
	 * @查看信息
	 */
	
	@RequestMapping("showInfo")
	public ModelAndView showInfo(String info_type,String check,String pay){

		List<Info> I=userService.showInfo(info_type,check,pay);
		ModelAndView mav=new ModelAndView("show/showInfo");		
		mav.addObject("list",I);
		return mav;           
	}
	
	/**
	 * 
	 * @根据id、查信息
	 */
	@RequestMapping("showInfoById")
	public ModelAndView showInfoById(int id){
		Info i=userService.showInfoById(id);
		ModelAndView mav=new ModelAndView("show/showInfoById");
		mav.addObject("info",i);
		return mav;
	}	
	
	
	/**
	 * 
	 * @审核通过
	 */
	@ResponseBody
	@RequestMapping("setcheck")
	public String setcheck(int id){
		userService.setcheck(id);
		return "1";
		
	}
	
	/**
	 * 
	 * @设置付费
	 */
	
	@ResponseBody
	@RequestMapping("setpay")
	public String setpay(int id){
		userService.setpay(id);
		return "1";
	}
	
	/**
	 * 
	 * @前台信息查询
	 */
	@RequestMapping("selectInfo")
	public ModelAndView selectInfo(String valuekey,String valuetype,String checktype){
		List<Info> I=userService.selectInfo(valuekey,valuetype,checktype);
		ModelAndView mav=new ModelAndView("show/selectInfo");
		mav.addObject("list",I);
		return mav;
	}

}