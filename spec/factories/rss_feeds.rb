# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rss_feed do
		url "http://www.example.com"
    title "MyString"
  end
end
