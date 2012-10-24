require 'spec_helper'

describe "organizers/index" do
  before(:each) do
    assign(:organizers, [
      stub_model(Organizer,
        :name => "Name",
        :organization => "Organization"
      ),
      stub_model(Organizer,
        :name => "Name",
        :organization => "Organization"
      )
    ])
  end

  it "renders a list of organizers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Organization".to_s, :count => 2
  end
end
