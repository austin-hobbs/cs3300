# spec/features/visitor_signs_up_spec.rb
require 'rails_helper'
RSpec.feature "Users", type: :feature do

    context "Create new user" do
    
        scenario "should be successful" do
            visit('/')
            click_link('Sign up')
            within("form") do
                fill_in "Email", with: "test@example.com"
                fill_in "Password", with: "password123"
                fill_in "Password confirmation", with: "password123"
                click_button('Sign up')
            end

            expect(page).to have_content("Logged in as")
        end
    
        scenario "should fail" do
            visit('/')
            click_link('Sign up')
            within("form") do
                fill_in "Email", with: "test@example.com"
                click_button('Sign up')
            end
            expect(page).to have_content("1 error prohibited this user from being saved:")
        end
    end

end