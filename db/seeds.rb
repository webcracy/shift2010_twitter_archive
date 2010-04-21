# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
require 'open-uri'

10.times do |page|
  results = Hashie::Mash.new(JSON.load(open(TWITTER_SEARCH + (page+1).to_s))).results
  results.each do |result|
    Tweet.find_or_create_by_twitter_id :twitter_id => result.id, :username => result.from_user, :status => result.text, :full_tweet => result, :created_at => result.created_at
  end
end


