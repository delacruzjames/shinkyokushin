require 'spec_helper'

describe "DojosControlerRouting" do
  it { get("/dojos/1").should route_to("dojos#show", :id => "1") } 
end
