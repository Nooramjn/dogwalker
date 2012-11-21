require 'spec_helper'

describe "walkers/show" do
  before(:each) do
    @walker = assign(:walker, stub_model(Walker,
      :firstname => "Firstname",
      :lastname => "Lastname",
      :phone => "Phone",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Firstname/)
    rendered.should match(/Lastname/)
    rendered.should match(/Phone/)
    rendered.should match(/MyText/)
  end
end
