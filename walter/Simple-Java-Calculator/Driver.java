import java.util.*;

class Driver {
	public static void main(String[] args) {
		// Instance of Calculator class
		Calculator calc = new Calculator();
		System.out.println("Hello, calculator");

		// private Double calculateBiImpl()

		// public Double calculateBi(BiOperatorModes newMode, Double num)

		// public Double calculateEqual(Double num)
		System.out.println("Test 1: calculateEqual(5.0): " + calc.calculateEqual(5.0));
		
		// public Double reset()
		System.out.println("Test 2: reset(): " + calc.reset());

		// public Double calculateMono(MonoOperatorModes newMode, Double num)
		System.out.println("Test 3: calculateMono(square, 2.0): " + calc.calculateMono(Calculator.MonoOperatorModes.square, 2.0));
		System.out.println("Test 4: calculateMono(squareRoot, 16.0): " + calc.calculateMono(Calculator.MonoOperatorModes.squareRoot, 16.0));
		System.out.println("Test 5: calculateMono(oneDividedBy, 0.25): " + calc.calculateMono(Calculator.MonoOperatorModes.oneDevidedBy, 0.25));
	}
}