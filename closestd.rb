require_relative "randoms" 
require_relative "price"
require "date"

class ClosestD
	include Math
	extend Randoms

	def initialize(arr,history)
		@arr = arr
		@history = history
	end

	def driver(i)
		#initialize
		@i = i
		@drv = Array.new
		@kor = Array.new

		#seaching coordinate driver and passanger
		for i in 0...@arr.length
			for j in 0...@arr.length
				if @arr[i][j] == "d"
					@drv << [i,j]
				elsif @arr[i][j] == "p"
					@korpass = [i,j]
				end
			end
		end

		#assign value pythagoras
		@drv.each do |v|
			@x = (v[0]-@korpass[0]).abs
			@y = (v[1]-@korpass[1]).abs
			@kor << Math.sqrt((@x**2)+(@y**2))
		end	

		#date and time
		@d = DateTime.now
		puts "Date and Time   : #{@d.strftime("%d/%m/%Y [%H:%M]")}"
		
		#information driver
		if @i==0
			#get random driver information
			@names = ClosestD.driver_name
			@motor = ClosestD.driver_motor
			@nopol = ClosestD.driver_nopol

			#puts driver information
			puts "Driver name     : #{@names}"
			puts "Driver vehicle  : #{@motor} (#{@nopol})"
			@z = @kor.rindex(@kor.min) #seaching nearest driver
			puts "Driver position : #{@drv[@z]}"

			#to method price
			@ps = Price.new(@arr,@names,@history)
			@finish = @ps.price(@i,@drv[@z],@korpass)
		else
			#puts driver information
			puts "Driver name     : #{@names}"
			puts "Driver bike     : #{@motor} (#{@nopol})"
			puts "Driver position : in your position"
			@finish = @ps.price(@i,@korpass,@korpass)
		end
		@finish
	end
end