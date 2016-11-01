import java.util.*;
import java.io.*;

class testDriverOneDividedBy {
	public static void main(String[] args) {
		// Instance of Calculator class
		Calculator calc = new Calculator();

		// args is input, test that args contains these
		try {
			return calc.calculateMono(Calculator.MonoOperatorModes.oneDevidedBy, args[0]);
		}
		catch(Exception e) {
			System.out.println("Need command-line args!");
		}
	}
}
