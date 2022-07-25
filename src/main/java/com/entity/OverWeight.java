package com.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="overweight")
public class OverWeight implements Serializable{

	
	private static final long serialVersionUID = 1L;
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getBreakfast() {
		return breakfast;
	}
	public void setBreakfast(String breakfast) {
		this.breakfast = breakfast;
	}
	public String getMidMeal() {
		return midMeal;
	}
	public void setMidMeal(String midMeal) {
		this.midMeal = midMeal;
	}
	public String getLunch() {
		return lunch;
	}
	public void setLunch(String lunch) {
		this.lunch = lunch;
	}
	public String getEvening() {
		return evening;
	}
	public void setEvening(String evening) {
		this.evening = evening;
	}
	public String getDinner() {
		return dinner;
	}
	public void setDinner(String dinner) {
		this.dinner = dinner;
	}
	@Id
	String day;
	@Column(name="breakfast")
	String breakfast;
	@Column(name="midMeal")
	String midMeal;
	@Column(name="lunch")
	String lunch;
	@Column(name="evening")
	String evening;
	@Column(name="dinner")
	String dinner;

}
