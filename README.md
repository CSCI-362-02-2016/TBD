# Team TBD

Switched projects to pH-7 Simple Java Calculator.

Now focusing on testing the Calculator.java file.

-To actually run the calculator GUI, clone the whole repo and run in the terminal.

-To run our testing framework, run scripts/runAllScripts.sh at the command line.

--TestAutomation/scripts/runAllTests.sh is a shell script that compiles and executes each testCase.java driver, reads each test case, and passes test case input to appropriate driver as a command line argument.

--Each testCase.java driver takes an input value a command line arg. The driver then executes the specified Calculator method and returns the output to the script. The script compares the returned output to expected results specified in the test case and displays the html report in a browser.

--testCase.txt file contains the details of each test case.

Chapters 1, 2, 3, and 4 of term project published as pdf  

11/15 Notes  
Edits - "Calculates" in testcase.txt  
Put more info in report (really in test case, read it for report) e.g. class name, requirement  
Result should be 'pass'/'fail'  

Bigger edits  
Script should deal with rounding with expected results calculated independently  
Call script from TestAutomation - run script at top level
Check that we can clone TestAutomation to anywhere and it still runs

Final stuff  
Fault injections in src  
Comment code  
Finished report with everything in it  
Poster (SSM Poster Session - ready)  
Presentation (20-25min, >5min each person) - spanning whole semester experience - no script demo  
