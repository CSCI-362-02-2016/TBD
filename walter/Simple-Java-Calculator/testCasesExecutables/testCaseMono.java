import java.util.*;
import java.io.*;

class testCaseMono {
	public static void main(String[] args) {
		// Instance of Calculator class
		Calculator calc = new Calculator();

		// args is file name, read file to get contents
		String ID = "";	
		String req = "";
		String comp = "";	
		String method = "";
		Double num = -1.0;
		Double expect = -1.0;
		String mode = "";	
		try {
			File file = new File(args[0]);
			Scanner scan = new Scanner(file);
			ID = scan.nextLine().substring(3);
			req = scan.nextLine().substring(4);
			comp = scan.nextLine().substring(5);
			method = scan.nextLine().substring(7);
				if(method.contains("cos"))
					mode = "cos";
				if(method.contains("sin"))
					mode = "sin";
				if(method.contains("tan"))
					mode = "tan";
				if(method.contains("square"))
					mode = "square";
				if(method.contains("squareRoot"))
					mode = "squareRoot";
				if(method.contains("oneDividedBy"))
					mode = "oneDevidedBy";
			num = Double.parseDouble(scan.nextLine().substring(7));
			expect = Double.parseDouble(scan.nextLine().substring(7));	
		}
		catch(Exception e) {
			System.out.println("File not found!");
		}

		System.out.println("<div class='table1'>Test Case</div><div class='table2'>" + ID + "</div>");
		System.out.println("<div class='table1'>Test Requirement</div><div class='table2'>" + req + "</div>");
		System.out.println("<div class='table1'>Component Tested</div><div class='table2'>" + comp + "</div>");
		System.out.println("<div class='table1'>Method Tested</div><div class='table2'>" + method + "</div>");
		System.out.println("<div class='table1'>Inputs: </div><div class='table2'>" + num + "</div>");
		System.out.println("<div class='table1'>Expected Results: </div><div class='table2'>" + expect + "</div>");
		
		// This will contain all of the possible method modes that this driver can 
		// execute and select the appropriate one for the test case.
		// Is there a way to clean up by using String mode directly in the method call?
		// public Double calculateMono(MonoOperatorModes newMode, Double num)
		if(mode.equals("cos")) {
			System.out.println("<div class='table1'>Actual Results: </div><div class='table2'>" + calc.calculateMono(Calculator.MonoOperatorModes.cos, num) + "</div>");
		}		
		else if(mode.equals("sin")) {
			System.out.println("<div class='table1'>Actual Results: </div><div class='table2'>" + calc.calculateMono(Calculator.MonoOperatorModes.sin, num) + "</div>");
		}		
		else if(mode.equals("tan")) {
			System.out.println("<div class='table1'>Actual Results: </div><div class='table2'>" + calc.calculateMono(Calculator.MonoOperatorModes.tan, num) + "</div>");
		}		
		else if(mode.equals("square")) {
			System.out.println("<div class='table1'>Actual Results: </div><div class='table2'>" + calc.calculateMono(Calculator.MonoOperatorModes.square, num) + "</div>");
		}
		else if(mode.equals("squareRoot")) {
			System.out.println("<div class='table1'>Actual Results: </div><div class='table2'>" + calc.calculateMono(Calculator.MonoOperatorModes.squareRoot, num) + "</div>");
		}
		else if(mode.equals("oneDevidedBy")) {
			System.out.println("<div class='table1'>Actual Results: </div><div class='table2'>" + calc.calculateMono(Calculator.MonoOperatorModes.oneDevidedBy, num) + "</div>");
		}
		else {
			System.out.println("Oops!");
		}
	}
}