require_relative "go-cli" #import class Go_cli

class Main
	def mains
		system "clear"
		#infinite loop
		while true do

			
			puts "            COMPFEST X - GO-JEK"
			puts "=============================================="
			puts "\n"
			puts "       IIIIIII     IIIIIIII       III"
			puts "       II          II            II II"
			puts "       IIIIIII     IIIIIIII     II   II"
			puts "            II     II          IIIIIIIII"
			puts "       IIIIIII     IIIIIIII    II     II"
			puts "\n"
			puts "=============================================="
			puts "         SOFTWARE ENGINEERING ACADEMY"

			#menu for which execute program
			puts "\n"
			puts "==========================="
			puts "      Execute Program"
			puts "==========================="
			puts "1. Without Parameter"
			puts "2. With 3 Parameter"
			puts "3. file"
			puts "0. Exit"
			print "Input: "
			pilihan = gets.chomp

			#without parameter
			if pilihan == "1"
				system "clear"

				Go_cli.new

			#with 3 parameter
			elsif pilihan == "2"
				print "Input size map (n): "
				n = gets.chomp.to_i
				print "Input your coordinate (x): "
				x = gets.chomp.to_i
				print "input your coordinate (y): "
				y = gets.chomp.to_i
				system "clear"
				if x<n && y<n
					Go_cli.new(n,x,y)
				else
					puts "your input is not in the maps"
					puts
				end

			#with file	
			elsif pilihan == "3"
				system "clear"

				Go_cli.new(File.open("input.txt", "r"))

			#to exit the program execute menu	
			elsif pilihan == "0"
				system "clear"
				puts "Goodbye!"
				break

			#if user wrong input	
			else
				system "clear"
				puts "wrong input"
			end
		end

		#end of infinite loop
	end
end

#to run the main program
Main.new.mains