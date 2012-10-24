require 'spec_helper'

describe "organizers/new" do
  before(:each) do
    assign(:organizer, stub_model(Organizer,
      :name => "MyString",
      :organization => "MyString"
    ).as_new_record)
  end

  it "renders new organizer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => organizers_path, :method => "post" do
      assert_select "input#organizer_name", :name => "organizer[name]"
      assert_select "input#organizer_organization", :name => "organizer[organization]"
    end
  end
end
