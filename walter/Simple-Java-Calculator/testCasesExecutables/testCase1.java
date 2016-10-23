import java.util.*;
import java.io.*;

class testCase1 {
	public static void main(String[] args) {
		// Instance of Calculator class
		Calculator calc = new Calculator();
		System.out.println("Hello, testCase1 Version 2");

		// args is file name, read file to get contents
		Double num = -1.0;
		String mode = "hello";	
		try {
			File file = new File(args[0]);
			Scanner scan = new Scanner(file);
			while(scan.hasNextLine()) {
				String s = scan.nextLine();
				if(s.contains("square"))
					mode = "square";
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
		if(mode.equals("square")) {
			System.out.println("testCase1: calculateMono(square, 2.0): " +
		 		calc.calculateMono(Calculator.MonoOperatorModes.square, num));
		}
		else {
			System.out.println("Oops!");
		}
	}
}