class Walker < ActiveRecord::Base

attr_accessible :firstname, :lastname, :phone, :description

before_save :format_phone

has_many :messages

phone_regex = /^\+?\d{11}|\+?\d{3}[-.]\d{4}[-.]\d{4}$/

validates :firstname, :presence => true
validates :lastname, :presence => true
validates :phone, :presence => true, :format => { :with => phone_regex, :message => "should be 11 digits (country code needed) and delimited with dashes" }

scope:alphabetical, order('lastname, firstname')

def proper_name
  	firstname+" "+lastname
  end
  
  def name
  	lastname+", "+firstname
  end

private
	def format_phone
		phone=self.phone.to_s
		phone.gsub!(/[^0-9]/, "")
		self.phone=phone
	end


end
