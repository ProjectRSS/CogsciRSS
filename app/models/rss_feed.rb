class RssFeed < ActiveRecord::Base
	has_many :entries
	has_and_belongs_to_many :users
end
