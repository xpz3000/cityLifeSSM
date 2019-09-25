package com.service;
import java.util.List;
import com.pojo.Info;
import com.pojo.User;
public interface UserService {
	List<User> regist();
	void registTosql(User user);
	User login(User user);
	void AddInfo(Info info);
	List<User> showAllUser();
	List<User> showUserById(int id);
	List<Info> showInfo(String info_type,String check,String pay);
	void removeUser(int id);
	Info showInfoById(int id);
	void setcheck(int id);
	void setpay(int id);
	List<Info> selectInfo(String valuekey,String valuetype,String checktype);        
}
