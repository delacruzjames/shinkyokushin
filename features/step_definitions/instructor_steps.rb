Given(/^I am logged in as an instructor$/) do
  @instructor_attributes = FactoryGirl.attributes_for(:instructor)
  Instructor.create!(@instructor_attributes)

  visit '/'
  click_on 'Login'
  fill_in 'Email', with: @instructor_attributes[:email]
  fill_in 'Password', with: @instructor_attributes[:password]
  click_on 'Sign in'
end

Given(/^I am on the dashboard page$/) do
  visit '/dashboard'
end

Then(/^I should be back on the dashboard page$/) do
  expect(page).to have_content(/dashboard/i)
end

When(/^I click on "(.*?)"$/) do |link|
  click_on link
end

When(/^I fill in the form with valid dojo data$/) do
  @dojo_attributes = FactoryGirl.attributes_for(:dojo)
  fill_in  'Name',        with: @dojo_attributes[:name]
  fill_in  'Description', with: @dojo_attributes[:description]
  click_on 'Create Dojo'
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I fill in the form with valid instructor profile data$/) do
  fill_in  'First name',       with: 'John'
  fill_in  'Middle name',      with: 'Dee'
  fill_in  'Last name',        with: 'Doe'
  fill_in  'Contact number',   with: '01234567890'
  fill_in  'Address line 1',   with: 'Blk 0 Lot 0 Daan Street'
  fill_in  'Address line 2',   with: 'Barangay, City'
  fill_in  'Address line 3',   with: 'Metro Manila, Philippines'
  fill_in  'Current password', with: @instructor_attributes[:password]
  click_on 'Update'
end
