import annotation.ExampleAnnotation;

/**
 * @brief example aspect
 * */

public aspect ExampleAspect{
	
	/**
	 * @info: pointcut's define events. 
	 * 		  Events could be method execution, object creation etc. 
	 * */
	
	
	/**
	 * @brief pointcut, that defines any execution, of something, that is annotated
	 * 		  with "ExampleAnnotation". Take a look at the ElementType of the annotation
	 * 		  to know what is executed
	 * */
	pointcut triggerExampleAnnotation(ExampleAnnotation example) : @annotation(example);
	
	/**
	 * @brief pointcut, that defines any execution, of a method
	 * */
	
	pointcut methodExecution() : execution(* *.*(..));
	
	
	/**
	 * @info an advice is a command, that orders AspectJ to execute 
	 * 		 a specific action, if its condition is true: 
	 * 
	 * 
	 * 		 advice() : condition. 
	 * 
	 * 		 Two advices are before, and after. 
	 * */
	
	
	/**
	 * @brief: triggers an action, before a condition will be true
	 * 		   (this condition is true if an ExampleAnnotation annotated Method will get executed)
	 * */
	
	before(ExampleAnnotation example) : methodExecution() && triggerExampleAnnotation(example){
		
		System.out.println(example.SaySomething() + " called before the method was executed ");
	}
	
	
	/**
	 * @brief: triggers an action, after a condition was true
	 * 		   (this condition is true if an ExampleAnnotation annotated Method was executed)
	 * */
	
	
	after(ExampleAnnotation example) : methodExecution() && triggerExampleAnnotation(example){
		
		System.out.println(example.SaySomething() + " called after the method was executed ");
	}
	
}