require 'rails_helper'

RSpec.feature "users/show", type: :feature do
  !let!(:user) { create(:user) }
  !let!(:pets) { create_list(:pet, 3, user: user) }
  !let!(:pet1) { pets.first }
  !let!(:pet2) { pets.second }
  !let!(:pet3) { pets.third }


  before :each do
    visit user_path(user)
  end

  it 'displays the user' do
    expect(page).to have_content(user.name)
    expect(page).to have_content(user.email)
  end

  it 'displays the pets' do
    expect(page).to have_content(pet1.name)
    expect(page).to have_content(pet2.name)
    expect(page).to have_content(pet3.name)

    expect(page).to have_content(pet1.species)
    expect(page).to have_content(pet2.species)
    expect(page).to have_content(pet3.species)

    expect(page).to have_content(pet1.age)
    expect(page).to have_content(pet2.age)
    expect(page).to have_content(pet3.age)
  end

end