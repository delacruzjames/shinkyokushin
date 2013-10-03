module InstructorSpecHelper

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

    def fill_up_album_form
      pending "Create models for album"
    end

end
