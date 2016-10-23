import java.util.*;
import java.io.*;

class testCase1 {
	public static void main(String[] args) {
		// Instance of Calculator class
		Calculator calc = new Calculator();

		// args is file name, read file to get contents
		String ID = "";		
		Double num = -1.0;
		String mode = "";	
		try {
			File file = new File(args[0]);
			Scanner scan = new Scanner(file);
			while(scan.hasNextLine()) {
				String s = scan.nextLine();
				if(s.contains("ID"))
					ID = s.substring(3);
				if(s.contains("cos"))
					mode = "cos";
				if(s.contains("sin"))
					mode = "sin";
				if(s.contains("tan"))
					mode = "tan";
				if(s.contains("square"))
					mode = "square";
				if(s.contains("squareRoot"))
					mode = "squareRoot";
				if(s.contains("oneDividedBy"))
					mode = "oneDevidedBy";
				if(s.contains("Inputs")) {
					String n = s.substring(7);	
					num = Double.parseDouble(n);
				}
			}
		}
		catch(Exception e) {
			System.out.println("File not found!");
		}
		
		// This will contain all of the possible method modes that this driver can 
		// execute and select the appropriate one for the test case
		// public Double calculateMono(MonoOperatorModes newMode, Double num)
		if(mode.equals("cos")) {
			System.out.println("testCase" + ID + ": calculateMono(" + mode + ", " + num + "): " +
		 		calc.calculateMono(Calculator.MonoOperatorModes.cos, num));
		}		
		else if(mode.equals("sin")) {
			System.out.println("testCase" + ID + ": calculateMono(" + mode + ", " + num + "): " +
		 		calc.calculateMono(Calculator.MonoOperatorModes.sin, num));
		}		
		else if(mode.equals("tan")) {
			System.out.println("testCase" + ID + ": calculateMono(" + mode + ", " + num + "): " +
		 		calc.calculateMono(Calculator.MonoOperatorModes.tan, num));
		}		
		else if(mode.equals("square")) {
			System.out.println("testCase" + ID + ": calculateMono(" + mode + ", " + num + "): " +
		 		calc.calculateMono(Calculator.MonoOperatorModes.square, num));
		}
		else if(mode.equals("squareRoot")) {
			System.out.println("testCase" + ID + ": calculateMono(" + mode + ", " + num + "): " +
		 		calc.calculateMono(Calculator.MonoOperatorModes.squareRoot, num));
		}
		else if(mode.equals("oneDevidedBy")) {
			System.out.println("testCase" + ID + ": calculateMono(oneDividedBy, " + num + "): " +
		 		calc.calculateMono(Calculator.MonoOperatorModes.oneDevidedBy, num));
		}
		else {
			System.out.println("Oops!");
		}
	}
}