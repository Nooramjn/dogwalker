require 'spec_helper'

describe "messages/show" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :subject => "Subject",
      :sendername => "Sendername",
      :content => "MyText",
      :walker_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Subject/)
    rendered.should match(/Sendername/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
