require_relative "randoms"
require_relative "price"
class ClosestD
	include Math
	extend Randoms

	def initialize(arr,history)
		@arr = arr
		@history = history
	end
	def driver
		@drv = Array.new
		@kor = Array.new
		for i in 0...@arr.length
			for j in 0...@arr.length
				if @arr[i][j] == "d"
					@drv << [i,j]
				elsif @arr[i][j] == "p"
					@korpass = [i,j]
				end
			end
		end
		@drv.each do |v|
			@x = (v[0]-@korpass[0]).abs
			@y = (v[1]-@korpass[1]).abs
			@kor << Math.sqrt((@x**2)+(@y**2))
		end	

		@names = ClosestD.driver_name
		puts "2. Your driver name is #{@names}"
		@z = @kor.rindex(@kor.min)
		puts "3. Your driver position is on Coordinate #{@drv[@z]} please wait until grab you"
		Price.new(@arr,@names,@history).price
	end
end