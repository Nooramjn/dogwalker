require 'spec_helper'

describe "walkers/edit" do
  before(:each) do
    @walker = assign(:walker, stub_model(Walker,
      :firstname => "MyString",
      :lastname => "MyString",
      :phone => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit walker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => walkers_path(@walker), :method => "post" do
      assert_select "input#walker_firstname", :name => "walker[firstname]"
      assert_select "input#walker_lastname", :name => "walker[lastname]"
      assert_select "input#walker_phone", :name => "walker[phone]"
      assert_select "textarea#walker_description", :name => "walker[description]"
    end
  end
end
