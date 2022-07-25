package com.model;

import java.sql.*;
import java.util.*;



import com.entity.Calorie;


public class CalorieModel implements CalorieRemote{

	@Override
	public List<Calorie> details() throws Exception {
		List<Calorie> L = new ArrayList<Calorie>();
		String url = "jdbc:mysql://localhost:3306/klu";
		  String username = "root";
		  String password = "12345";
		  
		  Connection con = null;
		  PreparedStatement ps = null;
	    try {
	      con = DriverManager.getConnection(url, username, password);
	      ps = con.prepareStatement("select * from calorie");
	      ResultSet rs = ps.executeQuery();
	      while(rs.next()) {
	        Calorie c = new Calorie();
	       c.setId(rs.getInt(1));
	       c.setItem(rs.getString(2));
	       c.setQuantity(rs.getString(3));
	       c.setCalorie(rs.getString(4));
	        
	        L.add(c);
	      }
	      con.close();
	    } catch(Exception e) {
	      System.out.println(e.getMessage());
	    }
	    return L;
	}
	
	

}
