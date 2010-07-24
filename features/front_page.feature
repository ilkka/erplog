Feature: Front Page
  In order to see the most relevant posts
  As a reader
  I want the 5 most recent posts on the front page

  Scenario: 1 post in blog
    Given I have a post
    And my post has title "My Post"
    And my post has body "This is my post. Back off!"
    And my post has author with name "Charles Max Wood"
    And my post was published on "May 22, 2010"
    
