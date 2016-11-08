import java.util.*;
import java.io.*;

class testDriverCos {
	public static void main(String[] args) {
		// Instance of Calculator class
		Calculator calc = new Calculator();

		// args is input, test that args contains these
		try {
			Double num = Double.parseDouble(args[0]);
			return calc.calculateMono(Calculator.MonoOperatorModes.cos, num);
		}
		catch(Exception e) {
			System.out.println("Need command-line args!");
		}
	}
}
