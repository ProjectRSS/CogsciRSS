require 'spec_helper'

describe Entry do
	before {@entry = FactoryGirl.build(:entry)}
	it "has a valid factory" do
		FactoryGirl.create(:entry).should be_valid
	end
	subject{@entry}
	it {should respond_to(:title)}
	it {should respond_to(:text)}
	it {should respond_to(:RssFeed)}
end
