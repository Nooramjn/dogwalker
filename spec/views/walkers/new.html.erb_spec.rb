require 'spec_helper'

describe "walkers/new" do
  before(:each) do
    assign(:walker, stub_model(Walker,
      :firstname => "MyString",
      :lastname => "MyString",
      :phone => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new walker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => walkers_path, :method => "post" do
      assert_select "input#walker_firstname", :name => "walker[firstname]"
      assert_select "input#walker_lastname", :name => "walker[lastname]"
      assert_select "input#walker_phone", :name => "walker[phone]"
      assert_select "textarea#walker_description", :name => "walker[description]"
    end
  end
end
