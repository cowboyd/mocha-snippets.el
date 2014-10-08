Feature: Using Mocha Snippets in JavaScript
  There's a lot of boilerplate associated with writing mocha
  tests. As a developer I want to avoid boilerplate and just get to
  writing my tests. Enter Mocha YASsnippets. These handly snippets
  will save time by giving shortcuts to all of the Mocha constructs.

  Scenario: It loads JavaScript snippets
    Given an empty JavaScript buffer
    When I type 'desc' and then hit the TAB key
    Then I should see an describe block in place like
"""
describe('something', function() {})
"""

  Scenario: It loads CoffeScript snippets
    Given an empty CoffeScript buffer
    When I type 'bef' and then hit the TAB key
    Then I should see a beforEach block
"""
beforeEach ->
"""
