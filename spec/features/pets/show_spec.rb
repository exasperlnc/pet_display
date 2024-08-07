require 'rails_helper'

RSpec.feature "pets/show", type: :feature do
  !let!(:user) { create(:user) }
  !let!(:pet) { create(:pet, user: user) }

  before :each do
    visit "/pets/#{pet.id}"
  end

  it 'displays the pet' do
    expect(page).to have_content(pet.name)
    expect(page).to have_content(pet.species)
    expect(page).to have_content(pet.age)
  end

  it "displays the user's name" do 
    expect(page).to have_content("Owner: #{user.name}")
  end
end