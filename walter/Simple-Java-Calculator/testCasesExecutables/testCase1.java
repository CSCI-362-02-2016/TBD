import java.util.*;

class testCase1 {
	public static void main(String[] args) {
		// Instance of Calculator class
		Calculator calc = new Calculator();
		System.out.println("Hello, testCase1");

		// Convert args[0] to Double
		Double num = Double.parseDouble(args[0]);

		// public Double calculateMono(MonoOperatorModes newMode, Double num)
		System.out.println("testCase1: calculateMono(square, 2.0): " + calc.calculateMono(Calculator.MonoOperatorModes.square, num));
	}
}