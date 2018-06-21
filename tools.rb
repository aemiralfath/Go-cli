require_relative "maps"
require_relative "go-ride"
require_relative "user"
require_relative "confirm"

class Tools

	def initialize(arr,n)
		@arr = arr
		@n = n
	end

	#Logo GO-cli
	def logo
		puts "                 WELCOME TO"
		puts "=============================================="
		puts "\n"
		puts "  IIIIIII  IIIIIIII     IIIIII  II       II"
		puts "  II       II    II     II      II       II"
		puts "  II   II  II    II III II      II       II"
		puts "  II    II II    II     II      II       II"
		puts "  IIIIIIII IIIIIIII     IIIIII  IIIIIII  II"
		puts "\n"
		puts "=============================================="
		puts "\n"
		User.new.user
		puts "\n"
		puts "================= MAIN MENU =================="
		puts "\n"
	end

	#Go-cli menu
	def menu
		@history = Array.new
		File.open("history.txt", "w+") { |io| @history.each { |e| io.puts(e) } }

		#infinite loop
		while true
			puts "\n"
			logo
			puts "1. Show Map"
			puts "2. Order Go-Ride"
			puts "3. History"
			puts "0. Exit Go-Cli"
			print "input: "
			pil = gets.chomp

			#show map
			if pil == "1"
				system "clear"
				Maps.new(@arr,@n).maps
				print "Press any key to back to menu "
				menus = gets.chomp
				system "clear"
			#order go-ride
			elsif pil == "2"
				system "clear"
				Go_ride.new(@arr,@history).pesan

			#display history
			elsif pil == "3"
				system "clear"
				History.new(@history).history
				puts "\n"
				print "Press any key to back to menu "
				menus = gets.chomp
				system "clear"
			#exit
			elsif pil == "0"
				system "clear"
				puts "Thank you!"	
				break

			#wrong input	
			else
				system "clear"
				puts "wrong input"
			end
			puts "\n"
		end
	end
end