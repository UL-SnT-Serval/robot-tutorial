# Example 2

## Goal

The goal of the example is to get familiarized with behavior-driven-style in Robot Framework. More specifically, the example show how to write test use the Gherkin convention (Given - When - Then).

## Gherkins notation in Robot Framework

If no match with the full name is found, prefixes *Given*, *When*, *Then*, *And* and *But* are dropped when user and library keywords are searched for matching. 

## Embedding variables in the keywords

To improve the readability of the keywords, arguments can be embedded in the keywords and be passed as data. The argument are then directly embedded into the keyword name, which allows to use real and clear sentences as keywords.

## Locators

This exercise relies on locating and interacting with elements from the web page. The test pass on the version 1 of the demo but not on version 2. This example shows the importance of properly choosing locators that are robust to the changes in the application.

As a challenge, try to generate a more robust set of locators. Note, example 3 propose a solution working on both version 1 and version 2.