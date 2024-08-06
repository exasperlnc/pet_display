require 'rails_helper'

RSpec.describe Pet, type: :model do
  let!(:objects) { create_list(:pet, 3) }
  let!(:object1) { objects.first }

  it { should belong_to(:user) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:age) }
  it { should validate_presence_of(:species) }

  it 'exists' do
    expect(object1).to be_valid
  end

end
