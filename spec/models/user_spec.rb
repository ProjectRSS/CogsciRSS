require 'spec_helper'

describe User do
	before {@user = User.new(email: "user@example.com", password:"foobar", password_confirmation:"foobar")}
	subject{@user}
	it {should be_valid}
	it {should respond_to(:email)}
	it {should respond_to(:password_digest)}
	it {should respond_to(:password)}
	it {should respond_to(:password_confirmation)}
	it {should respond_to(:authenticate)}

	describe "when email is not present" do
		before {@user.email = " "}
		it {should_not be_valid}
	end

	describe "when email format is invalid" do\
		it "should be invalid" do
			addresses = %w[user@foo,com user_at_foo.org example.user@foo. foo@bar_baz.com foo@bar+baz.com]
	  	addresses.each do |invalid_address|
				@user.email = invalid_address
				expect(@user).not_to be_valid
			end
		end
 	end

	describe "when password is not present" do
		before do
			@user = User.new( email: "user@example.com", password: "", password_confirmation: "")
		end
		 it {should_not be_valid}
	end

	describe "when email adress is already taken" do
		before do
			user_with_same_email = @user.dup
			user_with_same_email.email = @user.email.upcase
			user_with_same_email.save
		end
		it {should_not be_valid}
	end

	describe "with a password thats too short" do
		before { @user.password = @user.password_confirmation = "a" * 5}
		it {should be_invalid}
	end

	describe "when password doesnt match confirmation" do
		before { @user.password_confirmation = "bsadfasdf" }
		it {should_not be_valid}
	end
end
