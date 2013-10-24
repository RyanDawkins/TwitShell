#!/usr/bin/ruby

require 'Authorization'
require 'UpdateStatus'

class Shell

	def Shell.shellMain

		Authorization.authorize
		puts "Welcome to the CLITwitter"
		puts "Enter 'help' for a list of commands"
		check = true

		while check
			check = menu
		end
	end

	def Shell.commandHelp

		print "=========\n"
		print "Commands:\n"
		print "=========\n"
		print "update - to update a status\n"
		print "clear - clears the screen\n"
		print "exit - to exit the program\n"
		print "help - lists commands and their functions\n"

	end


	def Shell.menu
		
		print "<twitshell>"
		input = gets.chomp
		input.downcase
		check = menuDecider(input)
		return check
	end

	def Shell.menuDecider(input)

		case input
			when 'update'
				UpdateStatus.statusMain
				return true
			when 'help'
				commandHelp
				return true
			when 'clear'
				puts "\n" * 50
				return true
			when 'exit'
				return false			
			else
				print "Error: incorrect input: "#{input}" please enter a valid option"
				print "Enter help for a list of commands\n"
				return true
		end
	end

	shellMain

end
