package com.model;

import java.util.List;

import javax.ejb.Remote;

import com.entity.User;

@Remote
public interface UserRemote {
	public void insert(User u);
	public void update(String username, double height, double weight);
	public List<String> view();
	

}
