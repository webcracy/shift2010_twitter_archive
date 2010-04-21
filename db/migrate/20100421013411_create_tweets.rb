class CreateTweets < ActiveRecord::Migration
  def self.up
    create_table :tweets do |t|
      t.string :username
      t.string :twitter_id
      t.string :status
      t.string :full_tweet
      t.datetime :published_at

      t.timestamps
    end
  end

  def self.down
    drop_table :tweets
  end
end
