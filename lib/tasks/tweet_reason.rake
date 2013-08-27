namespace :cause do
	desc "Tweet random reason"
	task :tweet => :environment do
		require 'open-uri'
		
		tweet_desc = Cause.find_random.content

		if tweet_desc.length > 134
			tweet_desc = tweet_desc[0...134] + '...'
		end		

		puts tweet_desc
		Twitter.update tweet_desc
		
	end
end
