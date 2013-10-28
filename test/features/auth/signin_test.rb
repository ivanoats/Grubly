require "test_helper"

feature "users can sign in" do
  scenario "a normal visitor can sign in if they have an account" do
  puts "NO, I WILL NOT SAY Hello Dylan"

    # Given a user already has an account

    # When they try to sign in
    visit root_path
    click_on "Sign In"
    fill_in "Email", with: users(:normal_user1).email
    fill_in "Password", with: "password"
    click_on "Sign in"

    # Then it will be successful
    visit root_path
    page.text.must_include "Sign Out"

  end

  scenario "restaurant owners can sign in with special permissions" do
    # Given a restaurant owner has a superaccount

    # When they try to sign in
    visit root_path
    click_on "Sign In"
    fill_in "Email", with: users(:restaurant_owner1).email
    fill_in "Password", with: "password"
    click_on "Sign in"

    # Then it will be successful
    visit root_path
    page.text.must_include "Sign Out"

  end

  scenario "a normal visitor can sign in with twitter" do
    # Given that a user has an account on Twitter

    # When they use it to sign in to Grubly
    visit root_path
    sign_in_twitter_user
    click_on "Login with Twitter"

    # Then it will be successful
    page.text.must_include "Sign Out"

  end

end
