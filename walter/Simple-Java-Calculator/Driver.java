import java.util.*;

class Driver {
	public static void main(String[] args) {
		Calculator calc = new Calculator();
		System.out.println("Hello, calculator");
		System.out.println("calculateEqual(5.0): " + calc.calculateEqual(5.0));
		System.out.println("reset(): " + calc.reset());
		System.out.println("calculateMono(square, 2.0): " + calc.calculateMono(Calculator.MonoOperatorModes.square, 2.0));
	}
}