Feature: Using Mocha Snippets in JavaScript
  There's a lot of boilerplate associated with writing mocha
  tests. As a developer I want to avoid boilerplate and just get to
  writing my tests. Enter Mocha YASsnippets. These handly snippets
  will save time by giving shortcuts to all of the Mocha constructs.

  Scenario: Adding a describe block.
    Given an empty JavaScript buffer
    When I type 'desc' and then hit the TAB key
    Then I should see an describe block in place like
"""
describe('something', function() {
  
})
"""
    And the 'something' should be highlighted.
    When I type "something awesome"

  Scenario: Doing a describe in something that is not 
