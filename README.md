# Team TBD

Switched projects to pH-7 Simple Java Calculator.

Now focusing on testing the Calculator.java file.

-To actually run the calculator GUI, clone the whole repo and run in the terminal.

-To run our testing framework, run scripts/runAllScripts.sh at the command line.

--scripts/runAllTests.sh is a shell script that compiles and executes each testCase.java driver, passing the appropriate testCase.txt file as a command line argument.

--Each testCase.java driver takes a testCase.txt file name as a command line arg and reads the inputs specified in the file. The driver then executes the specified Calculator method, passing the specified inputs as parameters. Each driver can run multiple testCase.txt test cases, because the method that it chooses to run is specified in each test case file. The driver also runs an oracle.java file that calculates and returns expected results that are compared to the actual results produced by the Simple-Java-Calculator.

--testCase.txt file contains the details of each test case.

Chapters 1, 2 and 3 of term project published as pdf
