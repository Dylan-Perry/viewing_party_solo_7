require "rails_helper"

RSpec.describe 'user registration', type: :feature do
    # As a visitor,
    # When I visit `/register`
    # I see a form to fill in my name, email, password, and password confirmation.
    # When I fill in that form with my name, email, and matching passwords,
    # I'm taken to my dashboard page `/users/:id`

    describe "As a visitor when I visit the homepage '/" do
        it 'I can click a link that says Sign up to be a user' do
            visit register_user_path

            # save_and_open_page

            username = "funbucket13"
            password = "test"
            email = "funbucket13@gmail.com"

            fill_in :user_username, with: username
            fill_in :user_email, with: username
            fill_in :user_password, with: password
            fill_in :user_password_confirmation, with: password

            # save_and_open_page

            click_on "Create New User"

            expect(page).to have_content("#{username}'s Dashboard")
        end
    end
end