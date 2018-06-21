require_relative "closestd"
require_relative "maps"

class Go_ride
	def initialize(arr,history)
		@arr = arr
		@history = history
	end

	def pesan	
		@i = 0 #index for destination

		#infinite loop
		while true

			#logo Order
			puts "\n"
			puts "=========================================================="
			puts "                    ORDER GO-RIDE"
			puts "=========================================================="
			puts "\n"
			Maps.new(@arr,@arr[0].length).maps #recently maps
			puts "\n"

			#input destination with split
			puts "Input your destination"
			puts "- x,y *seperate by ','"
			puts "- 0 to cancel"
			print "input : "
			koordinat = gets.chomp

			#split koordinat
			xy = koordinat.split(",")
			@x = xy[0].to_i
			@y = xy[1].to_i

			

			if koordinat.include?(",") && !(@x >= @arr[0].length) && !(@y >= @arr[0].length)
				@arr[@x][@y] = "x"
				
				system "clear"
				puts "\n"
				puts "~~~~~~We found your nearest driver!~~~~~"
				puts "\n"
				puts "Information:"
				
				#if i == 0 enter method c new
				if @i == 0
					c = ClosestD.new(@arr,@history)
					@confirm = c.driver(@i)

				#if != 0 enter method 
				else
					@confirm = c.driver(@i)
				end

				#if no
				if @confirm == "n"
					puts "\n"	

				#if yes	
				elsif @confirm == "y"
					puts "\n"
					system "clear"
					puts "Thank you for use our service!"
					break

				#if wrong input	
				elsif @confirm == "0"
					break
				else
					system "clear"
					puts "Wrong Input"
				end
				@i+=1
			
			elsif koordinat == "0"
				system "clear"
				break
			else
				system "clear"
				puts "Wrong Input"
			end
			
		end
		
	end
end