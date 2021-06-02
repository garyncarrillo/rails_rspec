require 'rails_helper'

RSpec.describe User, type: :model do

  it 'successfully be created' do
    user = User.create(first_name: 'John', last_name: 'Smith', email: 'john_smith@gmail.com')
    expect(user).to be_valid
  end

  it 'Only first_name' do
    user = User.create(first_name: 'John')
    expect(user).to be_valid
  end

  it 'Only last_name' do
    user = User.create(last_name: 'Smith')
    expect(user).to be_valid
  end

  it 'only last_name and first_name' do
    user = User.create(first_name: 'John', last_name: 'Smith')
    expect(user).to be_valid
  end


  it 'only email' do
    user = User.create(email: 'john_smith@gmail.com')
    expect(user).to be_valid
  end
end
