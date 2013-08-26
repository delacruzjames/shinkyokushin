require 'spec_helper'

describe "PagesControllerRouting" do
	it { get("/").should route_to("pages#index")}
end
