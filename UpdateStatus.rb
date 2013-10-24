require 'rubygems'
require 'twitter'

class UpdateStatus

	def UpdateStatus.getTweet

		print "What would you like to tweet?\n> "
		tweet = gets.chomp
		#Twitter.update(tweet)

	end

	def UpdateStatus.again?

		check = true
		puts "Would you like to tweet again?"
		print "enter: 'yes' or 'no'\n> "
		correctInput = false
		while !correctInput
		        
			input = gets.chomp
                	input.downcase

			case input
				when 'yes'
					check = true
					correctInput = true

				when 'no'
					check = false
					correctInput = true
				else
					print "\nError: Incorrect input. Please enter 'yes' or 'no'\n> "
					correctInput = false
				end
		end
		return check

	end

	def UpdateStatus.statusMain
		check = true
		while check
		getTweet
		check = again?
		end
	end
end
