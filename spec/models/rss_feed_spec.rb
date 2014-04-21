require 'spec_helper'

describe RssFeed do
	let(:user) {FactoryGirl.create(:user) }
	before {@rssFeed = RssFeed.new(title:"This is the title", url:"http://www.example.com")}
	subject{@rssFeed}
	it {should respond_to(:url)}
	it {should respond_to(:title)}
	it {should be_valid}

end
