require 'spec_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  describe "User authenticate method" do
    before(:all) do
      @user = User.create(email: "coder@skillcrush", password: "password")
    end
    after(:all) do
      if !@user.destroyed?
        @user.destroy
      end
    end
    #authenticates and returns a user when valid email and password passed in
  	it { should validate_presence_of(:first_name) }
	  it { should validate_presence_of(:last_name) }
	  it { should validate_presence_of(:email) }
	  it { should validate_presence_of(:password) }
  end
end