require 'rails_helper'

RSpec.describe List, type: :model do
  it 'is valid with a name' do
    list = List.new(name: 'Drama')
    expect(list).to be_valid
  end

  it 'is not valid without a name' do
    list = List.new
    expect(list).not_to be_valid
  end
end
