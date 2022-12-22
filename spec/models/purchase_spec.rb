require 'rails_helper'

RSpec.describe Purchase, type: :model do
  before :each do
    @user = User.create(name: 'Abel Gebeyehu', email: 'test@example.com', password: 'password',
                        password_confirmation: 'password')
    @category = Category.create(name: 'Travel', icon: 'bus-icon', user: @user)
    @purchase = Purchase.new(name: 'France', amount: 2000, user: @user)
    @purchase.category = @category
    @purchase.save
  end

  context 'Validations should be working' do
    it 'ALL validations should return true' do
      expect(@purchase).to be_valid
    end

    it 'Name validation should return false' do
      @purchase.name = nil
      expect(@purchase).not_to be_valid
    end

    it 'Name should return "France"' do
      expect(@purchase.name).to eql('France')
    end

    it 'email should return a string' do
      expect(@purchase.amount).to be_a_kind_of(Numeric)
    end
  end
end
