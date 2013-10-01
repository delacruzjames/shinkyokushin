require 'spec_helper'

describe "Instructor" do

  before(:all) do
    @dojo_attrs = FactoryGirl.attributes_for :dojo
    @instructor_attrs = FactoryGirl.attributes_for :instructor
    Instructor.create! @instructor_attrs
  end

  before(:each) do
    visit '/dashboard'
    expect(page).to have_content('Sign In')
    sign_in_as_instructor
  end

  it "can create dojo" do
    click_link "Add dojo"
    fill_up_dojo_form

    expect(page).to have_content("created successfully")
    expect(page).to have_content @dojo_attrs[:name]
    expect(page).to have_content @dojo_attrs[:description]
  end

  it "update own profile" do
    click_link "Edit profile"
    fill_up_profile_form
    expect(page).to have_content("Instructor Dashboard")
  end

  private

    def sign_in_as_instructor
      fill_in "Email",    with: @instructor_attrs[:email]
      fill_in "Password", with: @instructor_attrs[:password]
      click_on "Sign in"
    end

    def fill_up_dojo_form
      fill_in  'Name',        with: @dojo_attrs[:name]
      fill_in  'Description', with: @dojo_attrs[:description]
      click_on 'Create Dojo'
    end

    def fill_up_profile_form
      fill_in 'First name',     with: 'John'
      fill_in 'Middle name',    with: 'Dee'
      fill_in 'Last name',      with: 'Doe'
      fill_in 'Contact number', with: '01234567890'
      fill_in 'Address line 1', with: 'Blk 0 Lot 0 Daan Street'
      fill_in 'Address line 2', with: 'Barangay, City'
      fill_in 'Address line 3', with: 'Metro Manila, Philippines'
      fill_in 'Current password', with: @instructor_attrs[:password]
      click_on 'Update'
    end
end
