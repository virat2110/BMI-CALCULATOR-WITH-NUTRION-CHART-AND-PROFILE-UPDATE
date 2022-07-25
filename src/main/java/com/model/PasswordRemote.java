package com.model;

import javax.ejb.Remote;

@Remote
public interface PasswordRemote {
	public String encrypt();
	

}
