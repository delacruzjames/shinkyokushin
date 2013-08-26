require 'spec_helper'

describe User do
  context "validations" do
    it { should validate_presence_of(:dojo_id)}
  end

  context "relationship" do
    it { should belong_to(:instructor) }
    it { should belong_to(:dojo) }
  end
end
