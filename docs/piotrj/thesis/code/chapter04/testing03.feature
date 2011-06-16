Feature: Managing posts
  In order to manage my blog
  As a blog owner
  I want to be able to manage posts

  Scenario: Adding new blog post
    Given no posts exist
    When I am on the home page
    And I follow "new post"
    And I fill in "Title" with "Post number 1"
    And I fill in "Body" with "Hello world"
    And I press "Create Post"
    Then I should be on posts list
    And I should see "Post number 1"
    And I should see "Hello world"