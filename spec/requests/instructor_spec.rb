require 'spec_helper'

describe "Instructor" do
  include ::InstructorSpecHelper

  before(:all) do
    @dojo_attrs = FactoryGirl.attributes_for :dojo
    @instructor_attrs = FactoryGirl.attributes_for :instructor
    @instructor = Instructor.create! @instructor_attrs
  end

  context "inside dashboard page" do
    before(:each) do
      visit '/dashboard'
      expect(page).to have_content('Sign In')
      sign_in_as_instructor
    end

    it "creates dojo" do
      click_link "Add dojo"
      fill_up_dojo_form

      expect(page).to have_content("created successfully")
      expect(page).to have_content @dojo_attrs[:name]
      expect(page).to have_content @dojo_attrs[:description]
    end

    it "updates own profile" do
      click_link "Edit profile"
      fill_up_profile_form
      expect(page).to have_content("Instructor Dashboard")
    end
  end

  context "inside dojos page" do
    before(:each) do
      @instructor.dojos.create! FactoryGirl.attributes_for(:dojo)
      visit '/users/sign_in'
      sign_in_as_instructor
      click_link "Dojos"
    end

    it "creates a photo album for that dojo" do
      image_click("Assets")
      click_link "Add photo album"
      fill_up_album_form
      expect(page).to have_content("Album created successfully")
    end
  end

  def image_click(alt)
    find(:xpath, "//a/img[@alt='#{alt}']/..").click
  end
end
