package com.model;

import java.util.List;
import javax.ejb.Remote;
import com.entity.*;


@Remote
public interface NutritionRemote {
	
	public List<Healthy> detailsHealthy();
	public List<Obesity> detailsObesity();
	public List<UnderWeight> detailsunderWeight();
	public List<OverWeight> detailsoverWeight();

}
