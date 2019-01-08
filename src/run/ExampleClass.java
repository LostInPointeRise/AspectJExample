package run;

import annotation.ExampleAnnotation;

public class ExampleClass {

	@ExampleAnnotation(SaySomething = "Hello From Annotation")
	public void WillSaySomethingThroughItsAnnotation() {
		
	}
}
