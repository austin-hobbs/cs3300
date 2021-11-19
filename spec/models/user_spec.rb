require 'rails_helper'

RSpec.describe User, type: :model do
  context "valid Factory" do
    it "has a valid factory" do
      expect(build(:user)).to be_valid
    end
  end

  context "validations tests" do
    it "ensures the user is valid" do
      user = User.new(id: 1, email: "test@user.com", password: "qwerty")
      expect(user.valid?).to eq(true)
    end
    it "should return false with no pass" do
      user = User.new(id: 1, email: "test@user.com")
      expect(user.valid?).to eq(false)
    end
  end

  it 'is database authenticable' do
    user = User.create(
       email: 'test@example.com', 
      password: 'password123',
      password_confirmation: 'password123'
    )
    expect(user.valid_password?('password123')).to be_truthy
  end


end
