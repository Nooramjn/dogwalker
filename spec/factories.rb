require 'factory_girl' 

FactoryGirl.define do
  
	factory :walker do
		firstname "Noora"
		lastname "AlMaslamani"
		phone "97466677788"
		description "I am a dog walker"
	end
	
	factory :message do 
		date 2.days.ago
		subject "need a dog walker"
		sendername "Sara"
		content "I need a dog walker for 2 hours on sunday morning"
		association :walker
	end
end