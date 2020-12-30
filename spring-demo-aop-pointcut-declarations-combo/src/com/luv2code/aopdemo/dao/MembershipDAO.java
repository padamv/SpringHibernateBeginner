package com.luv2code.aopdemo.dao;

import org.springframework.stereotype.Component;

@Component
public class MembershipDAO {

	public void addSillyMember() {
		
		System.out.println(getClass() + ": Doing stuff: adding a membership account...");
	}
	
	public void goToSleep() {
		
		System.out.println(getClass() + "I'm going to sleep now...");
		
	}
}
