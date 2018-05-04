# Sparta-mobile-app-test

## Purpose of the project
Create an automated test framework for the 'BudgetWatch' mobile app

## Tools
* Appium
* Android Studio
* Cucumber
* Selenium web driver
* Language: Ruby

## Tests written using the Gherking syntax

```Cucumber
Given I can open the app
When click on budget
Then the budsget page opens
```
```Cucumber
Given I can open the app
When I enter a budget
And save the budget
Then the budget is saved
And can be seen on the homepage
```
