Given /^an initial business$/ do
		@noora=FactoryGirl.create(:walker)
		@ali=FactoryGirl.create(:walker, :firstname=> "Ali", :phone=>"97444454862")
		@message1=FactoryGirl.create(:message, :walker=> @noora)
		@message2=FactoryGirl.create(:message, :walker=> @ali, :sendername=> "Ahmed", :date=> 5.days.ago, :subject=> "dog walking", :content=> "hi")
		@message3=FactoryGirl.create(:message, :walker=> @noora, :sendername=> "Sara", :date=> 2.days.ago,:subject=> "dog walking", :content=> "help me")
		@noora = FactoryGirl.create(:walker)
  	 	@ali = FactoryGirl.create(:walker, :firstname => "Ali", :phone => "974-5557-8615")
  		@bedoor = FactoryGirl.create(:walker, :firstname => "Bedoor", :phone => "97466702244")

end

When /^I am on the home page$/ do
  visit root_path
end

Then /^I should not see "(.*?)"$/ do |arg1|
  page.should_not have_content(arg1)
end

Given /^I go to the home page$/ do
  visit root_path
end

When /^I follow the "(.*?)" link$/ do |arg1|
click_link arg1
end

When /^I follow the "(.*?)" link in the "(.*?)"$/ do |value, csstag|
within('header', :text => value) do
     find('a', :text => csstag).click
end
end

When /^I follow the "(.*?)" link in the header$/ do |value|

page.should have_link value
click_link value
end


Then /^I should see "(.*?)" in the "(.*?)"$/ do |output, tagname|
  page.should have_css(tagname, :text => output)
end

Given /^I am on the 'about us' page$/ do
visit staticpages_about_us_path
end

Given /^I am on the 'contact us' page$/ do
  visit staticpages_contact_us_path
end

Given /^I am on the 'privacy policy' page$/ do
  visit staticpages_privacy_policy_path
end

Given /^I am on the 'walkers' page$/ do
  visit walkers_path
end

Then /^I should see a link to "(.*?)" in the "(.*?)"$/ do |csstag, value|
  within('body', :text => csstag) do
      find('a', :text => value).click
      
    end
end

Given /^I am on the 'new walker' page$/ do
  visit new_walker_path
end

When /^I enter "(.*?)" for "(.*?)" box$/ do |input, label|
	fill_in(label, :with => input)
end

When /^I click on "(.*?)" button$/ do |arg1|
 click_button(arg1)
end

When /^I follow the "(.*?)" link for "(.*?)"$/ do |link, cell_value|
  find(:xpath, "//td[contains(.,'#{cell_value}')]").click_link link
end

When /^I change the first name "(.*?)" to "(.*?)"$/ do |oldname, newname|
  fill_in "First Name", :with => newname
end

Given /^I am on the 'messages' page$/ do
  visit messages_path

end

Given /^I am on the 'new message' page$/ do
  visit new_message_path
end

When /^I select "(.*?)" for "(.*?)"$/ do |value, selectbox|
	select value, :from =>selectbox
end
When /^I change the subject "(.*?)" to "(.*?)"$/ do |old, new|
  fill_in "Subject", :with => new
end