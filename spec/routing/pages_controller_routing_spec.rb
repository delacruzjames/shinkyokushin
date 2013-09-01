require 'spec_helper'

describe "PagesControllerRouting" do
	context "correct proper routing" do
		it { get("/").should route_to("pages#index")}
	end
end
