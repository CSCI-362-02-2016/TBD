class oracleMono {
	public Double calc(String mode, Double d) {
		if(mode.equals("cos")) {
			return Math.cos(d);
		}		
		else if(mode.equals("sin")) {
			return Math.sin(d);
		}		
		else if(mode.equals("tan")) {
			return Math.tan(d);
		}		
		else if(mode.equals("square")) {
			return d*d;
		}
		else if(mode.equals("squareRoot")) {
			return Math.sqrt(d);
		}
		else if(mode.equals("oneDividedBy")) {
			return 1.0/d;
		}
		else
			return null;
	}
}

	