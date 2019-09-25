package com.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mapper.UserMapper;
import com.pojo.Info;
import com.pojo.User;
import com.service.UserService;

@Service
public class UserServiceIpml implements UserService{
	@Autowired
	UserMapper userMapper;
	@Override
	public List<User> regist() {
		return userMapper.regist();
	}
	@Override
	public void registTosql(User user) {
		userMapper.registTosql(user);
	}

	@Override
	public User login(User user) {
		return userMapper.login(user);
	}

	@Override
	public void AddInfo(Info info) {
		userMapper.AddInfo(info);
	}

	@Override
	public List<User> showAllUser() {
		return userMapper.showAllUser();
	}

	@Override
	public List<User> showUserById(int id) {
		return userMapper.showUserById(id);
	}

	@Override
	public List<Info> showInfo(String info_type,String check,String pay) {
		return userMapper.showInfo(info_type,check,pay);
	}

	@Override
	public void removeUser(int id) {
		userMapper.removeUser(id);		
	}

	@Override
	public Info showInfoById(int id) {		
		return userMapper.showInfoById(id);
	}

	@Override
	public void setcheck(int id) {
		userMapper.setcheck(id);		
	}

	@Override
	public void setpay(int id) {
		userMapper.setpay(id);		
	}

	@Override
	public List<Info> selectInfo(String valuekey,String valuetype,String checktype) {
		return userMapper.selectInfo(valuekey,valuetype,checktype);
	}
}
