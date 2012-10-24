require 'spec_helper'

describe "organizers/edit" do
  before(:each) do
    @organizer = assign(:organizer, stub_model(Organizer,
      :name => "MyString",
      :organization => "MyString"
    ))
  end

  it "renders the edit organizer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => organizers_path(@organizer), :method => "post" do
      assert_select "input#organizer_name", :name => "organizer[name]"
      assert_select "input#organizer_organization", :name => "organizer[organization]"
    end
  end
end
