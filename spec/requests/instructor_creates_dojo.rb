require 'spec_helper'

describe "Instructor" do

  before(:all) do
    @attrs = {
      first_name: 'James',
       last_name: 'dela Cruz',
           email: 'instructor@example.com',
        password: 'password'
    }
    Instructor.create! @attrs
  end

  before(:each) do
    visit '/dashboard'
    expect(page).to have_content("Sign In")
    login
  end

  def login
    fill_in "Email", with: @attrs[:email]
    fill_in "Password", with: @attrs[:password]
    click_on "Sign in"
  end

  it "can create dojo" do
    click_link "Add dojo"

    fill_in  'Name',        with: 'Name for new dojo'
    fill_in  'Description', with: 'Description for new dojo'

    click_on 'Create Dojo'

    expect(page).to have_content("created successfully")


    save_and_open_page

    expect(page).to have_content("Name for new dojo")
    expect(page).to have_content("Description for new dojo")
  end

end
