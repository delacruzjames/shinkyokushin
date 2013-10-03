require 'spec_helper'

describe Album do
  let(:album) { Album.new }
  it { expect(album).to validate_presence_of :name }
end
