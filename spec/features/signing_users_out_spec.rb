require 'rails_helper'

RSpec.feature "Signing out signed-in users" do

  before do
    @john = User.create!(email: "john@example.com", password: "password")
    login_as(@john)
  end

  scenario do
    visit "/"
    click_link "Sign out"
    expect(page).to have_content("Signed out successfully.")
  end
end