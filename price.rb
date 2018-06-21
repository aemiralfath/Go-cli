#import class
require_relative "history"
require_relative "confirm"
require_relative "go-ride"
require "date"

class Price
	
	def initialize(arr,names,history)
		@arr = arr
		@names = names
		@history = history
	end
	
	def price(i,z,tawal)
		
		#initialize
		@i = i
		@price = 300
		@tujuan = nil
		@Tawal = tawal
		@z = z
		@fare = 0
		@range = 0
		

		#for searching @tujuan coordinate
		for i in 0...@arr.length
			for j in 0...@arr.length
				if @arr[i][j] == "x"
					@tujuan = [i,j]
				end
			end
		end


		#route for user to destination
		@unit = 0
		if @Tawal[0]< @tujuan[0]
			
			@Tawal[0].upto(@tujuan[0]) { @unit+=1  }
			if @Tawal[1]>@tujuan[1]
				(@Tawal[1]-1).downto(@tujuan[1]) { @unit+=1 }
			elsif @Tawal[1]<@tujuan[1]
				(@Tawal[1]+1).upto(@tujuan[1]) { @unit+=1 }
			end
		elsif @Tawal[0] > @tujuan[0]
			@Tawal[0].downto(@tujuan[0]) { @unit+=1  }
			if @Tawal[1]>@tujuan[1]
				(@Tawal[1]-1).downto(@tujuan[1]) { @unit+=1 }
			elsif @Tawal[1]<@tujuan[1]
				(@Tawal[1]+1).upto(@tujuan[1]) { @unit+=1 }
			end
		else
			if @Tawal[1]>@tujuan[1]
				(@Tawal[1]).downto(@tujuan[1]) { @unit+=1 }
			elsif @Tawal[1]<@tujuan[1]
				(@Tawal[1]).upto(@tujuan[1]) { @unit+=1 }
			end
		end
		
		#price
		if @i==0

			#initialize
			@all_price = Array.new
			@all_unit = Array.new
			@all_tujuan = Array.new
			@temp = nil

			#assign
			@all_tujuan << @tujuan
			@all_unit << @unit
			@total_price = @unit*@price
			@all_price << @total_price
			@temp = @Tawal

			#get all value
			@tmpstr = ""
			@all_tujuan.each { |e|@tmpstr += "#{e}->" }

			#print information
			puts "Position        : #{@Tawal}"
			puts "Destination     : #{@tujuan}"
			puts "Fare            : #{@total_price} (#{@unit} unit)"
			puts "\n"
			@fare = @total_price
			@range = @unit
		else
			#initialize
			@total = 0
			@tunit = 0

			#assign
			@all_unit << @unit
			@total_price = @unit*@price
			@all_price << @total_price
			@all_tujuan << @tujuan
			
			#get all value
			@all_price.each{|e| @total+=e}
			@all_unit.each { |e| @tunit +=e  }
			@tmpstr = ""
			@all_tujuan.each { |e|@tmpstr += "#{e}->" }

			#print information
			puts "Position        : #{@temp}"
			puts "Destination     : #{@tmpstr}"
			puts "Fare            : #{@total} (#{@tunit} unit)"
			puts "\n"
			@fare = @total
			@range = @tunit
		end
		confirm(@arr,@z,@Tawal,@tujuan,@fare,@range)
	end
end