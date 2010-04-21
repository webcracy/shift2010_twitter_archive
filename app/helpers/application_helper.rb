# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def auto_mentions_and_hashtags(status)
    text = status
    text.scan(/@\w*/).each {|word| text.gsub! word, "<a href='http://twitter.com/#{word}'>#{word}</a>"}
    text.scan(/#\w*/).each {|word| text.gsub! word, "<a href='http://search.twitter.com/#{CGI.escape(word)}'>#{word}</a>"}
    return text
  end
end
