require 'spec_helper'

describe Participant do

  it "requires name and email" do

    subject.should_not be_valid
    subject.name = "Person"


    subject.should_not be_valid

    subject.email = "foo@ex.com"

    subject.should be_valid
  end
end
