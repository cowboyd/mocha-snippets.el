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
