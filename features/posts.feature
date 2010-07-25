Feature: Post Management & Display
  In order to create content
  As an author
  I need to be able to manage posts

  Scenario: Show post
    Given I have a post
    And my post has title "My Post"
    And my post has body "This is my post. Back off!"
    And my post has author with name "Ilkka Laukkanen"
    And my post was published on "May 22, 2010"
    When I display the post
    Then I should see "My Post"
    And I should see "This is my post. Back off!"
    And I should see "Ilkka Laukkanen"
    And I should see "May 22, 2010"

  Scenario: Create post
    Given I have a user named "Ilkka Laukkanen"
    When I go to the post creation page
    And I fill in "post[title]" with "My Post Title"
    And I fill in "post[body]" with "This is my other post. Eat my dust!"
    And I select "Ilkka Laukkanen" from "post[author]"
    And I fill in "post[published_on]" with "May 22, 2010"
    When I display the post
    Then I should see "My Post"
    And I should see "This is my post. Back off!"
    And I should see "Ilkka Laukkanen"
    And I should see "May 22, 2010"
