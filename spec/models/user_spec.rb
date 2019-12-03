require 'rails_helper'

RSpec.describe User, type: :model do
  it "validates presence of email" do
    expect(User.new.valid?).to be_falsey
  end
  
  it "validates presence of password" do
    expect(User.new(email: "test@gmail.com").valid?).to be_falsey
  end
  
  
  it "validates equality of password and password_confirmation" do
    expect(User.new(email: "test@gmail.com", password: "test", password_confirmation: "test2").valid?).to be_falsey
  end

  it "accepts user with email and password" do
    expect(User.new(email: "test@gmail.com", password: "test", password_confirmation: "test").valid?).to be_truthy
  end
end
