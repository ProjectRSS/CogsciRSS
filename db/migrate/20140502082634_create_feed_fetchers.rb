class CreateFeedFetchers < ActiveRecord::Migration
  def change
    create_table :feed_fetchers do |t|

      t.timestamps
    end
  end
end
