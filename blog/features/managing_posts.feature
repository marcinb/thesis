Feature: Managing posts
  In order to manage my blog
  As a blog owner
  I want to be able to manage posts

  Scenario: Adding new blog post
    Given no posts exist
    When I am on the home page
    And I follow "new post"
    And I fill in "Title" with "How to disassemble atomic bomb?"
    And I fill in "Body" with "You should avoid using fork for that."
    And I press "Create Post"
    Then I should be on posts list
    And I should see "How to disassemble atomic bomb?"
    And I should see "You should avoid using fork for that."
    
  @javascript
  Scenario: Deleting blog post
    Given following posts exists:
      | title                   | body                      |
      | How to raise your kid   | You should be good parent |
    When I am on the home page
    Then I should see "How to raise your kid"
    When I press "delete" and confirm
    Then I should be on posts list
    And I should not see "How to raise your kid"
  
  @javascript
  Scenario: Cancel deleteting blog post
    Given following posts exists:
      | title                   | body                      |
      | How to raise your kid   | You should be good parent |
    When I am on the home page
    Then I should see "How to raise your kid"
    When I press "delete" and not confirm
    Then I should be on the home page
    And I should see "How to raise your kid"
