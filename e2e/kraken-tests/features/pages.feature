Feature: Shared board connection

  @user1 @web
  Scenario: As an admin I want to create a new Page
    Given I navigate to page "<URL>"
    Then I enter "<EMAIL>" into input field having css selector "#ember8"
    Then I enter "<PASSWORD>" into input field having css selector "#ember10"
    Then I click on element having css selector "#ember12 > span"
    Then I wait for 2 seconds
    Then I navigate to page "<URL_PAGES>"
    Then I wait for 10 seconds
    Then I click on element having css selector "a[href='#/editor/page/']"
    Then I wait for 5 seconds
    Then I click on element having css selector "div.gh-koenig-editor-pane textarea.gh-editor-title"
    Then I enter "Page_1" into input field having css selector "div.gh-koenig-editor-pane textarea.gh-editor-title"
    Then I click on element having css selector "span.fw4.midgrey-l2"
    Then I wait for 6 seconds
    
    

  @user2 @web 
  Scenario: As an admin I want to edit a Page
    Given I navigate to page "<URL>"
    Then I enter "<EMAIL>" into input field having css selector "#ember8"
    Then I enter "<PASSWORD>" into input field having css selector "#ember10"
    Then I click on element having css selector "#ember12 > span"
    Then I wait for 2 seconds
    Then I navigate to page "<URL_PAGES>"
    Then I wait for 10 seconds
    Then I click on element having css selector "a[href='#/editor/page/']"
    Then I wait for 5 seconds
    Then I click on element having css selector "div.gh-koenig-editor-pane textarea.gh-editor-title"
    Then I enter "Page_1" into input field having css selector "div.gh-koenig-editor-pane textarea.gh-editor-title"
    Then I click on element having css selector "span.fw4.midgrey-l2"
    Then I wait for 6 seconds
    Then I click on element having css selector "header.gh-editor-header div > div > a"
    Then I click on element having css selector "ol.gh-list li a.gh-post-list-title"
    Then I wait for 5 seconds
    Then I click on element having css selector "div.gh-koenig-editor-pane textarea.gh-editor-title"
    Then I enter "Page_1_Modified" into input field having css selector "div.gh-koenig-editor-pane textarea.gh-editor-title"
    

  @user3 @web 
  Scenario: As an admin I want to publish a Page
    Given I navigate to page "<URL>"
    Then I enter "<EMAIL>" into input field having css selector "#ember8"
    Then I enter "<PASSWORD>" into input field having css selector "#ember10"
    Then I click on element having css selector "#ember12 > span"
    Then I wait for 2 seconds
    Then I navigate to page "<URL_PAGES>"
    Then I wait for 10 seconds
    Then I click on element having css selector "a[href='#/editor/page/']"
    Then I wait for 5 seconds
    Then I click on element having css selector "div.gh-koenig-editor-pane textarea.gh-editor-title"
    Then I enter "Page_1" into input field having css selector "div.gh-koenig-editor-pane textarea.gh-editor-title"
    Then I click on element having css selector "span.fw4.midgrey-l2"
    Then I wait for 6 seconds
    Then I click on element having css selector "header.gh-editor-header div > div > a"
    Then I click on element having css selector "li.gh-list-row.gh-posts-list-item"
    Then I wait for 5 seconds
    Then I click on element having css selector "div.gh-publishmenu.ember-view > div > span"
    Then I click on element having css selector "button.gh-btn.gh-btn-blue.gh-publishmenu-button.gh-btn-icon.ember-view"
    

  @user4 @web 
  Scenario: As an admin I want to add a tag to a Page
    Given I navigate to page "<URL>"
    Then I enter "<EMAIL>" into input field having css selector "#ember8"
    Then I enter "<PASSWORD>" into input field having css selector "#ember10"
    Then I click on element having css selector "#ember12 > span"
    Then I wait for 2 seconds
    Then I navigate to page "<URL_PAGES>"
    Then I wait for 10 seconds
    Then I click on element having css selector "a[href='#/editor/page/']"
    Then I wait for 5 seconds
    Then I click on element having css selector "div.gh-koenig-editor-pane textarea.gh-editor-title"
    Then I enter "Page_1" into input field having css selector "div.gh-koenig-editor-pane textarea.gh-editor-title"
    Then I click on element having css selector "span.fw4.midgrey-l2"
    Then I wait for 6 seconds
    Then I click on element having css selector "header.gh-editor-header div > div > a"
    Then I click on element having css selector "li.gh-list-row.gh-posts-list-item"
    Then I wait for 5 seconds
    Then I click on element having css selector "button.post-settings"
    Then I enter "newTag" into input field having css selector "input.ember-power-select-trigger-multiple-input"
    

  @user5 @web 
  Scenario: As an admin I want to add a delet a Page
    Given I navigate to page "<URL>"
    Then I enter "<EMAIL>" into input field having css selector "#ember8"
    Then I enter "<PASSWORD>" into input field having css selector "#ember10"
    Then I click on element having css selector "#ember12 > span"
    Then I wait for 2 seconds
    Then I navigate to page "<URL_PAGES>"
    Then I wait for 10 seconds
    Then I click on element having css selector "a[href='#/editor/page/']"
    Then I wait for 5 seconds
    Then I click on element having css selector "div.gh-koenig-editor-pane textarea.gh-editor-title"
    Then I enter "Page_1" into input field having css selector "div.gh-koenig-editor-pane textarea.gh-editor-title"
    Then I click on element having css selector "span.fw4.midgrey-l2"
    Then I wait for 6 seconds
    Then I click on element having css selector "header.gh-editor-header div > div > a"
    Then I click on element having css selector "li.gh-list-row.gh-posts-list-item"
    Then I wait for 5 seconds
    Then I click on element having css selector "button.post-settings"
    Then I click on element having css selector "form > .gh-btn > span"
    Then I click on element having css selector "button.gh-btn.gh-btn-red.gh-btn-icon.ember-view"
