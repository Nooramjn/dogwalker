Feature: viewer
  In order to look for dog walkers
  As a viewer
  I want to be able to find a dog walker
  
Background:
Given an initial business
	
Scenario: Do not see the default rails page
	When I am on the home page
	Then I should not see "You're riding Ruby of Rails!"
	And I should not see "About your application's environment"
	And I should not see "Create your database"
	#And I should see "Welcome Pet Owners!" in the "h1"
	  	
Scenario: View 'About Us'
	Given I go to the home page
	When I follow the "About Us" link in the "div#header"
	Then I should see "Dog Walkers :: About Us" in the "title"
	
Scenario: View 'Contact Us'
	Given I go to the home page
	When I follow the "Contact Us" link
	Then I should see "Dog Walkers :: Contact Us" in the "title"
	
Scenario: View 'Privacy Policy'
	Given I go to the home page
	When I follow the "Privacy Policy" link
	Then I should see "Dog Walkers :: Privacy Policy" in the "title"
	
Scenario: View webmaster information in footer

	Given I go to the home page
	Then I should see "The Smurfs" in the "footer"

Scenario: View About Us information in footer
	Given I go to the home page
	Then I should see "About Us" in the "footer"

Scenario: View Contact Us information in footer
	Given I go to the home page
	Then I should see "Contact Us" in the "footer"

Scenario: View Privacy Policy information in footer
	Given I go to the home page
	Then I should see "Privacy Policy" in the "footer"
	
Scenario: Viewing the header of the about us page
  Given I am on the 'about us' page
  Then I should see "About This Website" in the "h1"

Scenario: Viewing the header of the contact us page
  Given I am on the 'contact us' page
  Then I should see "Contact Us" in the "h1" 

Scenario: Viewing the header of the privacy policy page
  Given I am on the 'privacy policy' page
  Then I should see "Privacy Policy" in the "h1"
  
Scenario: List Walkers
  Given I am on the 'walkers' page
  Then I should see "Dog Walkers :: Doha" in the "title"
  And I should see "Listing Dog Walkers" in the "h1"
  And I should see "First Name" in the "th"
  And I should see "Last Name" in the "th"
  And I should see "Phone" in the "th"
  And I should see "Description" in the "th"
  And I should see "Sara" in the "td"
  And I should see "Al-Mulla" in the "td"
And I should see "97466666666" in the "td"
And I should see "hi" in the "td"
  And I should see a link to "Contact Me" in the "td"
    And I should see a link to "New Walker" in the "a"
    
Scenario: Creating a new walker
	Given I am on the 'new walker' page
	When I enter "Sara" for "Firstname" box
	And I enter "Al-Mulla" for "Lastname" box
	And I enter "97466666666" for "Phone" box
	And I enter "hi" for "Description" box
    And I click on "Create Walker" button 
	Then I should see "Walker was successfully created." in the "p#notice"
	
Scenario: Update walker
  Given I am on the 'walkers' page
  When I follow the "Edit" link for "Sarah"
  And I change the first name "Sarah" to "Sara"
  And I click on "Update" button 
  Then I should see "Walker was successfully updated." in the "p#notice"
  
Scenario: Delete walker
    Given I am on the 'walkers' page
    When I follow the "Destroy" link for "Sarah"
    Then I should not see "Sarah"

 Scenario: List Messages
  Given I am on the 'messages' page
  Then I should see "Dog Walkers :: Doha" in the "title"
  And I should see "All Dog Walkers Messages" in the "h1"
  And I should see "Date" in the "th"
  And I should see "Subject" in the "th"
  And I should see "Sender Name" in the "th"
  And I should see "Walker" in the "th"
  And I should see "2012-11-21" in the "td"
  And I should see "walk my dog" in the "td"
And I should see "noora" in the "td"
And I should see "Al-Mulla, Sarah" in the "td"
    And I should see a link to "New Message" in the "a"
    
Scenario: Creating a new message
	Given I am on the 'new message' page
	When I select "2012" for "year"
	When I select "November" for "month"
	When I select "24" for "day"
	When I enter "dog walking" for "Subject" box
	And I enter "Ahmed" for "Sendername" box
	And I enter "hi" for "Content" box
	And I enter "Ali" for "Firstname" box
	And I enter "hi" for "Description" box
  And I click on "Create Walker" button 
	Then I should see "Message was successfully created." in the "p#notice"
	
Scenario: Update message
  Given I am on the 'messages' page
  When I follow the "Edit" link for "Ahmed"
  And I change the subject "dog walking" to "dog"
  And I click on "Update" button 
  Then I should see "Message was successfully updated." in the "p#notice"
  
Scenario: Delete message
   Given I am on the 'messages' page
   When I follow the "Destroy" link for "Ahmed"
    Then I should not see "Ahmed" 

  
  