package com.luv2code.springdemo;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class SwimJavaConfigDemoApp {

	public static void main(String[] args) {

		// read spring config java class
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(SportConfig.class);

		// get the bean from spring container
		SwimCoach theCoach = context.getBean("swimCoach", SwimCoach.class);

		// call method on the bean
		System.out.println(theCoach.getDailyWorkout());
		
		//call method for daily fortune
		System.out.println(theCoach.getDailyFortune());
		
		//call our new swim coach methods... has the props values injected
		
		System.out.println("email: " + theCoach.getEmail());
		System.out.println("tem: " + theCoach.getTeam());

		// close the context
		context.close();
			
	}

}
