require_relative "go-cli"
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
		while true do
			puts "Execute Program by :"
			puts "1. Without Parameter"
			puts "2. With 3 Parameter"
			puts "3. file"
			puts "0. Exit"
			print "Input: "
			pilihan = gets.chomp
			if pilihan == "1"
				logo
				a = Go_cli.new
			elsif pilihan == "2"
				print "Input size map (n): "
				n = gets.chomp.to_i
				print "Input your coordinate (x): "
				x = gets.chomp.to_i
				print "input your coordinate (y): "
				y = gets.chomp.to_i
				logo
				a = Go_cli.new(n,x,y)
			elsif pilihan == "3"
				logo
				a = Go_cli.new(File.open("input.txt", "r"))
			elsif pilihan == "0"
				puts "Goodbye!"
				break
			else
				puts "wrong input"	
			end
		end
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
Main.new.mains