module CbcSpark
	class Episode
		attr_reader :title, :url, :description, :publication_date, :duration

		def initialize(title, url, description, publication_date, duration)
			@title = title
			@url = url
			@description = description
			@publication_date = publication_date
			@duration = duration
		end

		def to_json
			{
				title: @title,
				url: @url,
				description: @description,
				publication_date: @publication_date,
				duration: @duration
			}
		end
	end
end