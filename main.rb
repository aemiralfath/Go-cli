require_relative "go-cli" #import class Go_cli

class Main
	def mains
		puts "            COMPFEST X - GO-JEK"
		puts "=============================================="
		puts "       IIIIIII     IIIIIIII       III"
		puts "       II          II            II II"
		puts "       IIIIIII     IIIIIIII     II   II"
		puts "            II     II          IIIIIIIII"
		puts "       IIIIIII     IIIIIIII    II     II"
		puts "=============================================="
		puts "         SOFTWARE ENGINEERING ACADEMY"

		#infinite loop
		while true do

			#menu for which execute program
			puts "Execute Program by :"
			puts "1. Without Parameter"
			puts "2. With 3 Parameter"
			puts "3. file"
			puts "0. Exit"
			print "Input: "
			pilihan = gets.chomp

			#without parameter
			if pilihan == "1"
				logo 
				Go_cli.new

			#with 3 parameter
			elsif pilihan == "2"
				print "Input size map (n): "
				n = gets.chomp.to_i
				print "Input your coordinate (x): "
				x = gets.chomp.to_i
				print "input your coordinate (y): "
				y = gets.chomp.to_i
				logo
				Go_cli.new(n,x,y)

			#with file	
			elsif pilihan == "3"
				logo
				Go_cli.new(File.open("input.txt", "r"))

			#to exit the program execute menu	
			elsif pilihan == "0"
				puts "Goodbye!"
				break

			#if user wrong input	
			else
				puts "wrong input"	
			end
		end
		#end of infinite loop
	end

	def logo
		puts "                 WELCOME TO"
		puts "=============================================="
		puts "  IIIIIII  IIIIIIII     IIIIII  II       II"
		puts "  II       II    II     II      II       II"
		puts "  II   II  II    II III II      II       II"
		puts "  II    II II    II     II      II       II"
		puts "  IIIIIIII IIIIIIII     IIIIII  IIIIIII  II"
		puts "=============================================="
	end
end

#to run the main program
Main.new.mains