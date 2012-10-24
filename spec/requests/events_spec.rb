require 'spec_helper'

describe "Events" do
  it "Should register an event" do
    visit events_path
    click_link "New Event"
    fill_in "Title", with: "Woodstock"
    click_button "Create Event"

    error_message = "Location can't be blank"
    page.should have_content(error_message)
  end
end

