package com.DAO;

import java.util.List;

import com.entity.User;

public interface UserDAO {
	public boolean userRegister(User us); 
	
	public User login(String email,String password);
	
	public boolean addUser(User us);
	
	public List<User> getAllUsers();

	public User getUsersById(int id);
	
	public boolean updateEditUsers(User us);
	
	public boolean deleteUser(int id);
	
	public User getUserByUsername(String username);

	 public boolean updatePassword(String username, String newPassword);
}
