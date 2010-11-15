Feature: Managing posts
  In order to manage my blog
  As a blog owner
  I want to be able to manage posts

  Scenario: Addind new blog post
    Given no posts exist
    When I am on the home page
    And I follow "new post"
    And I fill in "Title" with "How to disasemble atomic bomb?"
    And I fill in "Body" with "You should avoid using fork for that."
    And I press "Create Post"
    Then I should be on posts list
    And I should see "How to disasemble atomic bomb?"
    And I should see "You should avoid using fork for that."
