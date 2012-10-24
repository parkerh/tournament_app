require 'spec_helper'

describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :title => "MyString",
      :organizer => nil,
      :location => "MyString",
      :rules => "MyText",
      :game => "MyString",
      :participants => "MyText"
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path, :method => "post" do
      assert_select "input#event_title", :name => "event[title]"
      assert_select "input#event_organizer", :name => "event[organizer]"
      assert_select "input#event_location", :name => "event[location]"
      assert_select "textarea#event_rules", :name => "event[rules]"
      assert_select "input#event_game", :name => "event[game]"
      assert_select "textarea#event_participants", :name => "event[participants]"
    end
  end
end
