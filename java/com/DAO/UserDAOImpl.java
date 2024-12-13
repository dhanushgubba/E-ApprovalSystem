package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.User;

public class UserDAOImpl implements UserDAO{

	private Connection conn;

	public UserDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean userRegister(User us) {
		// TODO Auto-generated method stub
		boolean f = false;
		
		try {
			String sql = "INSERT INTO user(name,  email, phno, password, rpassword) VALUES (?, ?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPhno());
			ps.setString(4, us.getPassword());
			ps.setString(5, us.getRpassword());
			
			int i = ps.executeUpdate();
			if(i==1) 
			{
				f=true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public User login(String email, String password) {
		// TODO Auto-generated method stub
		User us = null;
		try {
			String sql = "select * from user where email=? and password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,email);
			ps.setString(2,password);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				us = new User();
				us.setId(rs.getInt(1));
				us.setName(rs.getString(2));
				us.setEmail(rs.getString(3));
				us.setPhno(rs.getString(4));
				us.setPassword(rs.getString(5));
				us.setRpassword(rs.getString(6));
				/*us.setAddress(rs.getString(7));
				us.setLandmark(rs.getString(8));
				us.setCity(rs.getString(9));
				us.setState(rs.getString(10));
				us.setPincode(rs.getString(11));*/
			}	
		}catch(Exception e) {
			e.printStackTrace();
		}
		return us;
	}

	@Override
	public boolean addUser(User us) {
		// TODO Auto-generated method stub
		boolean f = false;
		try {
			String sql = "insert into User(name,email,phno,password,rpassword) values (?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPhno());
			ps.setString(4, us.getPassword());
			ps.setString(5, us.getRpassword());
			
			int i = ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}

	@Override
	public List<User> getAllUsers() {
		// TODO Auto-generated method stub
		List<User>list = new ArrayList<User>();
		
		try {
			String sql = "select * from user";
			PreparedStatement ps = conn.prepareStatement(sql);
	        ResultSet rs = ps.executeQuery();
	        while(rs.next()) {
	        	User us = new User(); 
	        	us.setId(rs.getInt(1));
	        	us.setName(rs.getString(2));
	        	us.setEmail(rs.getString(3));
	        	us.setPhno(rs.getString(4));
	        	us.setPassword(rs.getString(5));
	        	us.setRpassword(rs.getString(6));
	        	
	        	list.add(us);
	        }
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public User getUsersById(int id) {
		// TODO Auto-generated method stub
		User us = null;
		
		try {
			String sql = "select * from user where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				us = new User();
				us.setId(rs.getInt(1));
	        	us.setName(rs.getString(2));
	        	us.setEmail(rs.getString(3));
	        	us.setPhno(rs.getString(4));
	        	us.setPassword(rs.getString(5));
	        	us.setRpassword(rs.getString(6));
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return us;
	}

	@Override
	public boolean updateEditUsers(User us) {
		boolean f = false;
		try {
			String sql = "update user set name=?, email=?, phno=?, password=?, rpassword=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPhno());
			ps.setString(4, us.getPassword());
			ps.setString(5, us.getRpassword());
			ps.setInt(6, us.getId());
			
			int i = ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public boolean deleteUser(int id) {
		// TODO Auto-generated method stub
		boolean f = false;
		try {
			String sql = "delete from user where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();	
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	 @Override
	    public User getUserByUsername(String username) {
	        User us = null;

	        try {
	            String sql = "select * from user where name=?";
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setString(1, username);

	            ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
	                us = new User();
	                us.setId(rs.getInt(1));
	                us.setName(rs.getString(2));
	                us.setEmail(rs.getString(3));
	                us.setPhno(rs.getString(4));
	                us.setPassword(rs.getString(5));
	                us.setRpassword(rs.getString(6));
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return us;
	    }

	
	@Override
    public boolean updatePassword(String username, String newPassword) {
        boolean f = false;

        try {
            String sql = "UPDATE user SET password=?, rpassword=? WHERE name=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, newPassword);
            ps.setString(2, newPassword);
            ps.setString(3, username);

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

	
}
