require 'spec_helper'

describe User do
	before {@user = FactoryGirl.build(:user)}
	it "has a valid factory" do
		FactoryGirl.create(:user).should be_valid
	end
	subject{@user}
	it {should respond_to(:email)}
	it {should respond_to(:password)}
end
