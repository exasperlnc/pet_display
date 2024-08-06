require 'rails_helper'

RSpec.feature "users/index", type: :feature do
  !let!(:users) { create_list(:user, 3) }
  !let!(:user1) { users.first }
  !let!(:user2) { users.second }
  !let!(:user3) { users.third }

  before(:each) do
    visit users_path
  end

  it 'displays all the users' do
    expect(page).to have_content(user1.name)
    expect(page).to have_content(user2.name)
    expect(page).to have_content(user3.name)

    expect(page).to have_content(user1.email)
    expect(page).to have_content(user2.email)
    expect(page).to have_content(user3.email)
  end

end