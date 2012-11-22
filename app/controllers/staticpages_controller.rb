class StaticpagesController < ApplicationController
  def home
  @title = "Home"
  end

  def about_us
  @title = "About Us"
  end

  def contact_us
  @title = "Contact Us"
  end

  def privacy_policy
  @title = "Privacy Policy"
  end
  
end
