Feature: viewer
  In order to look for dog walkers
  As a viewer
  I want to be able to find a dog walker
	
Scenario: Do not see the default rails page
	When I am on the home page
	Then I should not see "You're riding Ruby of Rails!"
	And I should not see "About your application's environment"
	And I should not see "Create your database"
	#And I should see "Welcome Pet Owners!" in the "h1"
	  	
Scenario: View 'About Us'
	Given I go to the home page
	When I follow the "About Us" link
	Then I should see "About Us" in the "title"
	
Scenario: View 'Contact Us'
	Given I go to the home page
	When I follow the "Contact Us" link
	Then I should see "Contact Us" in the "title"
	
Scenario: View 'Privacy Policy'
	Given I go to the home page
	When I follow the "Privacy Policy" link
	Then I should see "Privacy Policy" in the "title"
	
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