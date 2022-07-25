package com.model;

import javax.ejb.Remote;
import com.entity.*;
import java.util.*;

@Remote
public interface CalorieRemote {
	
	public List<Calorie> details() throws Exception;

}
