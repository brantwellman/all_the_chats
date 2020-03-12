require "rails_helper"

RSpec.feature "Home Page", :type => :feature do
  scenario "User visits home page" do
    user1 = FactoryBot.create(:user)
    user2 = FactoryBot.create(:user)

    visit users_path

    expect(page).to have_content("Select Your Username to Begin Chatting")
    expect(page).to have_button(user1.username)
    expect(page).to have_button(user2.username)
  end
end
