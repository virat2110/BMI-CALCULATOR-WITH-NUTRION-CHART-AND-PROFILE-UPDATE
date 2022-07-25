package com.model;

import javax.ejb.Remote;

import com.entity.Login;

@Remote
public interface LoginRemote {
	public boolean login(String username, String password, Login e);
	

}
