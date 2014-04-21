class RssFeed < ActiveRecord::Base
	has_many :entries
end
