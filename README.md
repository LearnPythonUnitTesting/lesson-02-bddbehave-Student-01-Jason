# Lesson-02 BDD Behave
### 1. Behave
Behave is behaviour-driven development, Python style. Behavior-driven development (or BDD) is an agile software development technique that encourages collaboration between developers, QA and non-technical or business participants in a software project. We have a page further describing this philosophy. Behave uses tests written in a natural language style, backed up by Python code.

### 2. Installation
Execute the following command to install behave with pip:
```
pip install behave
```
To update an already installed behave version, use:
```
pip install -U behave
```

### 3. Basic Example
Now make a directory called "features". In that directory create a file called "tutorial.feature" containing:
```
Feature: showing off behave

  Scenario: run a simple test
     Given we have behave installed
      When we implement a test
      Then behave will test it for us!
```
Make a new directory called "features/steps". In that directory create a file called "tutorial.py" containing:
```
from behave import *

@given('we have behave installed')
def step_impl(context):
    pass

@when('we implement a test')
def step_impl(context):
    assert True is not False

@then('behave will test it for us!')
def step_impl(context):
    assert context.failed is False
```

Run behave:
```
% behave
Feature: showing off behave # features/tutorial.feature:1

  Scenario: run a simple test        # features/tutorial.feature:3
    Given we have behave installed   # features/steps/tutorial.py:3
    When we implement a test         # features/steps/tutorial.py:7
    Then behave will test it for us! # features/steps/tutorial.py:11

1 feature passed, 0 failed, 0 skipped
1 scenario passed, 0 failed, 0 skipped
3 steps passed, 0 failed, 0 skipped, 0 undefined
```

### 4. Example 2
Now make a directory called "features". In that directory create a file called "tutorial.feature" containing:
```
Feature: check word

  Scenario Outline: check word
    Given I have a word <a>
    When I input a word <b>
    Then the input word is equal with target word

    Examples: check word
      | a      | b      |
      | apple  | apple  |
      | banana | banana |
      | orange | orange |
```
Make a new directory called "features/steps". In that directory create a file called "tutorial.py" containing:
```
from behave import *

@Given('I have a word {a}')
def step_impl(context, a):
    context.a = a

@When('I input a word {b}')
def step_impl(context, b):
    context.b = b

@Then('the input word is equal with target word')
def step_impl(context):
    assert context.a == context.b

```

Run behave:
```
1 feature passed, 0 failed, 0 skipped
3 scenarios passed, 0 failed, 0 skipped
9 steps passed, 0 failed, 0 skipped, 0 undefined
Took 0m0.006s
```

### 5. Exercise
1.Write a scenario 