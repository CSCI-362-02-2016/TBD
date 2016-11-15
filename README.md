# Team TBD

Switched projects to pH-7 Simple Java Calculator.

Now focusing on testing the Calculator.java file.

-To actually run the calculator GUI, clone the whole repo and run in the terminal.

-To run our testing framework, run scripts/runAllScripts.sh at the command line.

--TestAutomation/scripts/runAllTests.sh is a shell script that compiles and executes each testCase.java driver, reads each test case, and passes test case input to appropriate driver as a command line argument.

--Each testCase.java driver takes an input value a command line arg. The driver then executes the specified Calculator method and returns the output to the script. The script compares the returned output to expected results specified in the test case and displays the html report in a browser.

--testCase.txt file contains the details of each test case.

Chapters 1, 2, 3, and 4 of term project published as pdf
