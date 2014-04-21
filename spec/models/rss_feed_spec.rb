require 'spec_helper'

describe RssFeed do
	before {@rssFeed = FactoryGirl.build(:rss_feed)}
	it "has a valid factory" do
		FactoryGirl.create(:rss_feed).should be_valid
	end
	subject{@rssFeed}
	it {should respond_to(:url)}
	it {should respond_to(:title)}
end
