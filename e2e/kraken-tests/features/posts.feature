Feature: Gestion de Posts

    @user1 @web
    Scenario: Create new post and publish it
        Given I navigate to page "<URL>"
        Then I enter "<EMAIL>" into input field having id "ember8"
        Then I enter "<PASSWORD>" into input field having id "ember10"
        Then I click on element having id "ember12"
        Then I click on element having css selector "li.gh-nav-list-new a.gh-nav-new-post"
        Then I enter "Create new post from Kraken title" into input field having css selector ".gh-editor-title"
        Then I enter "Create new post from Kraken description" into input field having css selector "div.koenig-editor__editor.__mobiledoc-editor"
        Then I wait for 10 seconds
        Then I click on element having css selector "div.gh-publishmenu > div.gh-publishmenu-trigger"
        Then I wait for 5 seconds
        Then I click on element having css selector "button.gh-publishmenu-button"
        Then I should see text "Published"

    @user2 @web
    Scenario: Edit title of a post
        Given I navigate to page "<URL>"
        Then I enter "<EMAIL>" into input field having id "ember8"
        Then I enter "<PASSWORD>" into input field having id "ember10"
        Then I click on element having id "ember12"
        Then I navigate to page "<URL_POSTS>"
        Then I click on element having css selector "ol.posts-list.gh-list li a.gh-post-list-status > div > span.gh-content-status-published"
        Then I enter "Edit title of a post from Kraken" into input field having css selector ".gh-editor-title"
        Then I enter "Edit description of a post from Kraken" into input field having css selector "div.koenig-editor__editor.__mobiledoc-editor"
        Then I wait for 5 seconds
        Then I click on element having css selector "div.gh-publishmenu > div.gh-publishmenu-trigger"
        Then I wait for 5 seconds
        Then I click on element having css selector "button.gh-publishmenu-button"
        Then I should see text "Published"
        Then I should see text "Edit title of a post from Kraken"
        Then I should see text "Edit description of a post from Kraken"

    @user3 @web
    Scenario: Change the status of a Post
        Given I navigate to page "<URL>"
        Then I enter "<EMAIL>" into input field having id "ember8"
        Then I enter "<PASSWORD>" into input field having id "ember10"
        Then I click on element having id "ember12"
        Then I navigate to page "<URL_POSTS>"
        Then I click on element having css selector "ol.posts-list.gh-list li a.gh-post-list-status > div > span.gh-content-status-published"
        Then I click on element having css selector "div.gh-publishmenu > div.gh-publishmenu-trigger"
        Then I wait for 5 seconds
        Then I click on element having css selector "div.gh-publishmenu-radio-label"
        Then I click on element having css selector "button.gh-publishmenu-button"
        Then I should see text "Unpublished"
        Then I should see text "Saved"

    @user4 @web
    Scenario: Delete a Post
        Given I navigate to page "<URL>"
        Then I enter "<EMAIL>" into input field having id "ember8"
        Then I enter "<PASSWORD>" into input field having id "ember10"
        Then I click on element having id "ember12"
        Then I navigate to page "<URL_POSTS>"
        Then I click on element having css selector "ol.posts-list.gh-list li a.gh-post-list-status > div > span.gh-content-status-published"
        Then I wait for 5 seconds
        Then I click on element having css selector "button.post-settings"
        Then I click on element having css selector "button.settings-menu-delete-button"             
       