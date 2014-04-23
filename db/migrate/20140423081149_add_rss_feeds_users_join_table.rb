class AddRssFeedsUsersJoinTable < ActiveRecord::Migration
	def self.up
		create_table :rss_feeds_users, :id => false do |t|
			t.integer :rss_feed_id
			t.integer :user_id
		end
	end
	def self.down
		drop_table :rss_feeds_items
	end
end
