package com.model;

import javax.ejb.Stateless;

@Stateless
public interface BmiRemote {
	public void bmiCheck(double weight, double height);

}
