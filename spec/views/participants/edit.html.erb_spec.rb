require 'spec_helper'

describe "participants/edit" do
  before(:each) do
    @participant = assign(:participant, stub_model(Participant,
      :name => "MyString",
      :age => 1,
      :email => "MyString",
      :payed => false
    ))
  end

  it "renders the edit participant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => participants_path(@participant), :method => "post" do
      assert_select "input#participant_name", :name => "participant[name]"
      assert_select "input#participant_age", :name => "participant[age]"
      assert_select "input#participant_email", :name => "participant[email]"
      assert_select "input#participant_payed", :name => "participant[payed]"
    end
  end
end
