module CbcSpark
  module Exceptions
  	class ConnectionError < StandardError
  		def message
  			"Sorry, could not connect to the cbc.ca/spark rss feed."
  		end
  	end
  end
end
