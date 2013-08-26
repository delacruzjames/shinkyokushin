require 'spec_helper'

describe Dojo do
  context "validation" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
  end

  context "relationship" do
    it { should have_many(:users)}
  end
end
