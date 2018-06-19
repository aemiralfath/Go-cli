require_relative "maps"
require_relative "go-ride"


class Tools
	def initialize(arr,n)
		@arr = arr
		@n = n
	end
	def menu
		@history = Array.new
		while true
			puts "\n"
			puts "Go-Cli Menu:"
			puts "1. Show Map"
			puts "2. Order Go-ride"
			puts "3. History"
			puts "0. Exit Go-Cli"
			print "input: "
			pil = gets.chomp
			if pil == "1"
				Maps.new(@arr,@n).maps
			elsif pil == "2"
				Go_ride.new(@arr,@history).pesan
			elsif pil == "3"
				History.new(@history).history
			elsif pil == "0"
				puts "Thank you!"	
				break
			else
				puts "wrong input"
			end
			puts "\n"
		end
	end
end