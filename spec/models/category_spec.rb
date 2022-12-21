require 'rails_helper'

RSpec.describe Category, type: :model do
  before do
    @user = User.create(name: 'Abel Gebeyehu', email: 'test@example.com', password: 'password',
                        password_confirmation: 'password')
    @category = Category.create(name: 'Movies', icon: 'Movie-image', user: @user)
  end

  context 'Validations should be working' do
    it 'ALL validations should return true' do
      expect(@category).to be_valid
    end

    it 'Name validation should return false' do
      @category.name = nil
      expect(@category).not_to be_valid
    end

    it 'Name should return "Movies"' do
      expect(@category.name).to eql('Movies')
    end

    it 'email should return a string' do
      expect(@category.icon).to be_a_kind_of(String)
    end
  end
end
