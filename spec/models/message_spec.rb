require 'spec_helper'
require 'factory_girl'

describe Message do

it "should have the correct associations" do
	 should belong_to(:walker)
	 
end

before (:each)do
		@noora=FactoryGirl.create(:walker)
		@ali=FactoryGirl.create(:walker, :firstname=> "Ali", :phone=>"97444454862")
		@message1=FactoryGirl.create(:message, :walker=> @noora)
		@message2=FactoryGirl.create(:message, :walker=> @ali, :sendername=> "Ahmed", :date=> 5.days.ago, :subject=> "dog walking", :content=> "hi")
		@message3=FactoryGirl.create(:message, :walker=> @noora, :sendername=> "Sara", :date=> 2.days.ago,:subject=> "dog walking", :content=> "help me")

	end
	
  describe "Test factories" do
		it "should have valid factory objects" do
		@noora.should be_valid
		@ali.should be_valid
		@message1.should be_valid
		@message2.should be_valid
		@message3.should be_valid
		end
	end

	 
it "should validate the presence of walker_id" do
	should validate_presence_of :walker_id
end
it "should validate the presence of message subject" do
	should validate_presence_of :subject
end
it "should validate the presence of sender name" do
	should validate_presence_of :sendername
end
it "should validate the presence of message content" do
	should validate_presence_of :content
end
it "should validate the presence of message date" do
	should validate_presence_of :date
	end
	
	



 it "should allow us to return the messages for a given walker" do
 	Message.for_walker(@ali.id).size.should ==1
 	Message.for_walker(@noora.id).size.should ==2

end

 it "should allow us to return the last 'x' messages" do
 	Message.for_walker(@ali.id).latest(3).size.should == 1
 	Message.for_walker(@noora.id).latest(5).size.should == 2
 	Message.for_walker(@noora.id).latest(1).size.should == 1

 end
end
