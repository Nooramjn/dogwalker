require 'spec_helper'
require 'factory_girl'

describe Walker do
	
	it "has the appropriate association" do
		should have_many (:messages)
	end
	
	before (:each) do
	
	@attr = {:firstname => "Hawra",
			:lastname =>"Abdulla",
			:phone =>"97444833550",
			:description => "I am available",
	}
	end
	
	describe "Validation Macros" do
  		it{ should validate_presence_of(:firstname)}
  		it{ should validate_presence_of(:lastname)}
  		it{ should validate_presence_of(:phone)}
  	end
  	
  	describe "Validating phone" do
  		
  		describe " The valid phones" do
 	 		it{ should allow_value("97444454862").for(:phone)}
  	 		it{ should allow_value("974-4445-4862").for(:phone)}
  	 		it{ should allow_value("974.4445.4862").for(:phone)}

  	end
  		
  		describe "Invalid phones" do
 	    	it{ should_not allow_value("800-eat-food").for(:phone)}

		end
 	end
 	
 	describe "Creating three walkers" do
  	
  	 before(:each) do
  	 	@noora = FactoryGirl.create(:walker)
  	 	@ali = FactoryGirl.create(:walker, :firstname => "Ali", :phone => "974-5557-8615")
  		@bedoor = FactoryGirl.create(:walker, :firstname => "Bedoor", :phone => "97466702244")
  	end
  	
  	it "create valid objects" do
  		@noora.should be_valid
  		@ali.should be_valid
  		@bedoor.should be_valid
    end
  
  	it "has the right attribute information" do
  		@noora.firstname.should=="Noora"
  		@ali.firstname.should=="Ali"
  		@bedoor.firstname.should=="Bedoor"
  	end
  	
  	it "returns all the records in alphabetical order" do
  		Walker.alphabetical.map{|o| o.firstname}.should == ["Ali","Bedoor","Noora"]
  	end
  	
  	it "returns the proper name correctly" do
  		@noora.proper_name.should=="Noora AlMaslamani"
  end
  	
  	it "returns the name correctly" do
  		@noora.name.should=="AlMaslamani, Noora"
  	end
  	end
end
