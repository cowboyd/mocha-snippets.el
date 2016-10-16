Feature: Using Mocha Snippets in JavaScript
  There's a lot of boilerplate associated with writing mocha
  tests. As a developer I want to avoid boilerplate and just get to
  writing my tests. Enter Mocha YASsnippets. These handly snippets
  will save time by giving shortcuts to all of the Mocha constructs.

  Scenario: It loads JavaScript snippets
    Given I am in buffer "some.js"
    When I turn on js-mode
    And I type "bef"
    And I press "TAB"
    Then I should see "beforeEach(function() {"

  Scenario: It loads CoffeScript snippets
    Given I am in buffer "some.coffee"
    When I turn on coffee-mode
    When I type "bef"
    And I press "TAB"
    Then I should see "beforeEach ->"

  Scenario It loads JavasScript snippets in js2-mode
    Given I am in buffer "some-js2.js"
    When I turn on js2-mode
    And I type "bef"
    And I press "TAB"
    Then I should see "beforeEach(function() {"

Feature: Customizing snippet expansion
  Some people use '' delimited strings, others use "". It's up to
  them, but whatever they choose, we want to make sure that they have
  the option to use the snippets, but apply their own style. This
  means changing how strings are represented as well as how function
  syntax is used.
  
  Scenario:
    Given I am in buffer "string-delimiter.js"
    And I turn on js-mode
    And I customize the string delimiter to double quote
    And I type "desc"
    And I press "TAB"
    Then I should see "describe("context", function() {"

  Scenario:
    Given I am in buffer "function-syntax.js"
    And I turn on js-mode
    And I customize the function syntax to =>
    And I type "bef"
    And I press "TAB"
    Then I should see "beforeEach(() => {"

  Scenario:
    Given I am in buffer "donezo.js"
    And I turn on js-mode
    And I customize the function syntax to =>
    And I type "bef."
    And I press "TAB"
    Then I should see "beforeEach((done) => {"
