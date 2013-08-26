require 'spec_helper'

describe Instructor do
  context "relationship" do
    it { should have_many(:users) }
    it { should have_many(:dojos) }
  end
end
