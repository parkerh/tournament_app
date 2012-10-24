require 'spec_helper'

describe "organizers/show" do
  before(:each) do
    @organizer = assign(:organizer, stub_model(Organizer,
      :name => "Name",
      :organization => "Organization"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Organization/)
  end
end
