# Exercise 1

## Goal

The goal of this first exercise is to get familiarized with the main building blocks of Robot Framework and to launch our first script.

## Test data sections

Robot Framework script are divided in sections listed below. T

* Settings: The settings blocks defines the context of the current file. It is used in particular to import test libraries, resource files and variable files. Furthermore, this is where metadata for the test suites and test cases are defined.

* Variables: The variable blocks define the variables that can be used by keywords, test cases or other variables. 

* Test Cases: The test case blocks define the test cases. A test case is the entry point of a run in robot framework and defines an entire test divided in a series of steps, the keywords.

* Keywords: The keyword blocks define the keywords composing the tests. A keyword is a procedure that performs a specific task. Each keyword is composed of a series of keywords calling each others. A keyword can be called by another keyword or a test case.


## Running a test

The command to run a test in robot framework is `robot`. To run the test from this tutorial, move to the directory where the `open_uni_lu_page.robot` resides and run the following command.

```
robot open_uni_lu_page.robot
```

Alternatively, to run all the test script from a folder, that will be seen as a suite, navigate to the directory where the folder resides and launch it robot with the folder as an argument for the `robot` command. In the case of exercise-1, this would translate to the following command.

```
robot exercise-1
```

The reports are located in the folder from which the command was executed. After executing the `robot` command, go and inspect the content of the report.