# Example 3

## Goal

The goal of this example is to get familiarized with data-driven tests in Robot Framework. 

## Test template

Test templates convert keyword-driven test cases into data-driven tests. Whereas the body of a keyword-driven test case is constructed from keywords and their possible arguments, test cases with template contain only the arguments for the template keyword.

Note that in the example, we rely on the **Test Template** notation located in the setting block. Another notation consists in applying the **\[Template\]** parameter to the Test Case. While using this second notation one can rely on for loops and if statements to the different instance of the template.

As an additional exercise, try to convert the keyword to the **\[Template\]** relying on the [official documentation](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#test-templates).