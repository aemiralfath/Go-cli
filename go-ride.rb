require_relative "closestd"
class Go_ride
	def initialize(arr,history)
		@arr = arr
		@history = history
	end
	def pesan
		@i = 0
		while true
			puts "\n"
			print "Input your destination (x,y *seperate by ',') : "
			koordinat = gets.chomp
			xy = koordinat.split(",")
			@x = xy[0].to_i
			@y = xy[1].to_i
			puts "We found your nearest driver!"
			puts "\n"
			puts "Information:"
			puts "1. Your Destination is #{@x},#{@y}"
			@arr[@x][@y] = "x"

			
			if @i == 0
				c = ClosestD.new(@arr,@history)
				c.driver
			else
				c.driver
			end

			print "Your Journey is completed, finish? (y/n): "
			confirm = gets.chomp
			if confirm == "n"
				puts "\n"		
			elsif confirm == "y"
				puts "Thank you for use our service"
				break	
			else
				puts "Wrong Input"
				break
			end
			@i+=1
		end
		
	end
end