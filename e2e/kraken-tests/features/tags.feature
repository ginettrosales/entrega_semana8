Feature: Tags

  @user1 @web
  Scenario: Should edit a public tag
    Given I navigate to page "<URL>"
    Then I enter "<EMAIL>" into input field having id "ember8"
    Then I enter "<PASSWORD>" into input field having id "ember10"
    Then I click on element having id "ember12"
    Then I wait
    Then I click on element having css selector "a[href='#/tags/']"
    Then I click on element having css selector "section.view-actions a.gh-btn-green"
    Then I enter "hello" into input field having id "tag-name"
    Then I enter "hello" into input field having id "tag-slug"
    Then I enter "hello" into input field having id "tag-description"
    Then I click on element having css selector "button.gh-btn > span"
    Then I click on element having css selector "a[href='#/tags/']"
    Then I click on element having css selector "ol.tags-list > li.gh-tags-list-item "
    Then I enter "hello" into input field having id "tag-name"
    Then I enter "hello" into input field having id "tag-slug"
    Then I enter "hello" into input field having id "tag-description"
    Then I click on element having css selector "button.gh-btn > span"
    Then I should see text "Saved"

  
  @user2 @web
  Scenario: Should edit a internal tag
    Given I navigate to page "<URL>"
    Then I enter "<EMAIL>" into input field having id "ember8"
    Then I enter "<PASSWORD>" into input field having id "ember10"
    Then I click on element having id "ember12"
    Then I wait
    Then I click on element having css selector "a[href='#/tags/']"
    Then I click on element having css selector "section.view-actions a.gh-btn-green"
    Then I enter "#hello" into input field having id "tag-name"
    Then I enter "hello" into input field having id "tag-slug"
    Then I enter "hello" into input field having id "tag-description"
    Then I click on element having css selector "button.gh-btn > span"
    Then I click on element having css selector "a[href='#/tags/']"
    Then I click on element having css selector "div.gh-contentfilter button:nth-child(2)"
    Then I click on element having css selector "ol.tags-list > li.gh-tags-list-item "
    Then I enter "hello" into input field having id "tag-name"
    Then I enter "hello" into input field having id "tag-slug"
    Then I enter "hello" into input field having id "tag-description"
    Then I click on element having css selector "button.gh-btn > span"
    Then I should see text "Saved"


 @user3 @web
  Scenario: Should delete a public tag
    Given I navigate to page "<URL>"
    Then I enter "<EMAIL>" into input field having id "ember8"
    Then I enter "<PASSWORD>" into input field having id "ember10"
    Then I click on element having id "ember12"
    Then I wait
    Then I click on element having css selector "a[href='#/tags/']"
    Then I click on element having css selector "section.view-actions a.gh-btn-green"
    Then I enter "hello" into input field having id "tag-name"
    Then I enter "hello" into input field having id "tag-slug"
    Then I enter "hello" into input field having id "tag-description"
    Then I click on element having css selector "button.gh-btn > span"
    Then I click on element having css selector "a[href='#/tags/']"
    Then I click on element having css selector "ol.tags-list > li.gh-tags-list-item "
    Then I click on element having css selector "button.gh-btn-red"
    Then I click on element having css selector "div.modal-footer button:nth-child(2)"
    Then I should see text "Tags"

 @user4 @web
  Scenario: Should error by more description characters
    Given I navigate to page "<URL>"
    Then I enter "<EMAIL>" into input field having id "ember8"
    Then I enter "<PASSWORD>" into input field having id "ember10"
    Then I click on element having id "ember12"
    Then I wait
    Then I click on element having css selector "a[href='#/tags/']"
    Then I click on element having css selector "section.view-actions a.gh-btn-green"
    Then I enter "hello" into input field having id "tag-name"
    Then I enter "hello" into input field having id "tag-slug"
    Then I enter "hello" into input field having id "tag-description"
    Then I click on element having css selector "button.gh-btn > span"
    Then I click on element having css selector "a[href='#/tags/']"
    Then I click on element having css selector "ol.tags-list > li.gh-tags-list-item "
    Then I enter "hellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohello" into input field having id "tag-description"
    Then I click on element having css selector "button.gh-btn > span"
    Then I should see text "Description cannot be longer than 500 characters."
    

  