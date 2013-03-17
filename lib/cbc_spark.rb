require "cbc_spark/version"
require "cbc_spark/exceptions"
require "cbc_spark/episode"
require "nokogiri"
require "httparty"

module CbcSpark
  extend self

  BASE_URL = "http://www.cbc.ca/podcasting/includes/spark.xml"

  def list
  	episodes
  end

  def latest
  	episodes.last
  end

  # Fetches a particular episode by number,
  # +episode_number+ is the number in the list, and may not necessarily be the actual episode number, since a few episodes are missing
  def get(episode_number)
  	episodes[episode_number-1]
  end

  private

  def episodes
  	@episodes ||= bootstrap
  end

  def bootstrap
    puts "Bootstrapping"
  	episodes = []
  	data = HTTParty.get(BASE_URL)
  	raise Exceptions::ConnectionError unless data.code == 200

  	feed = Nokogiri::XML(data.body)
  	feed.xpath('//item').each do |episode|
  		episodes << Episode.new(
  			episode.xpath('title').text,
  			episode.xpath('guid').text, 
  			episode.xpath('description').text, 
  			episode.xpath('pubDate').text, 
  			episode.xpath('itunes:duration').text
			)
  	end

  	episodes.reverse
  end
end
