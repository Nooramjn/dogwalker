require 'spec_helper'

describe "walkers/index" do
  before(:each) do
    assign(:walkers, [
      stub_model(Walker,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :phone => "Phone",
        :description => "MyText"
      ),
      stub_model(Walker,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :phone => "Phone",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of walkers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
