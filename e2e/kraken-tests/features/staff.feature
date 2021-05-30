Feature: Shared board connection

  @user1 @web
  Scenario: As a first user I say hi to a second user
    Given I navigate to page "<URL>"
    Then I enter "<EMAIL>" into input field having id "ember8"
    Then I enter "<PASSWORD>" into input field having id "ember10"
    Then I click on element having id "ember12"
    Given I navigate to page "<URL_GHOST>"
    Then I enter "Neiva - Huila" into input field having id "user-location"
    Then I enter "Ingeniera de Sistemas" into input field having id "user-bio"
    Then I send a signal to user 2 containing "hi"
    
  @user2 @web 
  Scenario: As a second user I wait for user 1 to say hi
  Given I wait for a signal containing "hi" for 60 seconds
   Given I navigate to page "<URL>"
    Then I enter "<EMAIL>" into input field having id "ember8"
    Then I enter "<PASSWORD>" into input field having id "ember10"
    Then I click on element having id "ember12"
    Given I navigate to page "<URL_STAFF>"
    Then I click on element having css selector ".gh-btn.gh-btn-green"
    Then I enter "$email_1" into input field having id "new-user-email"   
    Then I click on element having css selector ".gh-btn.gh-btn-green.gh-btn-icon.ember-view"

    
   
    
   
