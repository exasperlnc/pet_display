require 'rails_helper'


RSpec.describe User, type: :model do
  let!(:objects) { create_list(:user, 3) }
  let!(:object1) { objects.first }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it {should have_many(:pets) }

  it 'exists' do
    expect(object1).to be_valid
  end
  
end