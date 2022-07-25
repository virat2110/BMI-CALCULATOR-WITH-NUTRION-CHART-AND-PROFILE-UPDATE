package com.model;

import javax.ejb.Stateless;

@Stateless
public class BmiModel implements BmiRemote{
	public static String res="";

	public  void bmiCheck(double weight, double height) {
		double bmi = 0.0;
		height = height*0.3048;
		bmi = weight/(height*height);
		String result ="";
		
		
		
		if(bmi<19){
		    result = "Underweight, calorie/day: 2500-3000 ";
		     }
		else if(19.1<=bmi && bmi<=24.9){
		    result = "Healthy, calorie/day: 2000-2500 ";
		     }
		else if(25<=bmi && bmi<=29.9){
		    result = "Overweight, calorie/day: 1500-2000 ";
		     }
		else if(30<=bmi && bmi<= 40){
		    result = "Obese, calorie/day: 1000-1500, You need to consult doctor";
		     }
		else {
			result = "Consult doctor";
		}
		
		res = "BMI: "+String.format("%.2f", bmi) + "  status: "+ result;
		
	}

}
