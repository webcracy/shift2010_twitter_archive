class Tweet < ActiveRecord::Base
  serialize :full_tweet
end
