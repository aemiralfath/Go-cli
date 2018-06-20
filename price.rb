require_relative "history"
require_relative "maps2"
require_relative "go-ride"
class Price
	def initialize(arr,names,history)
		@arr = arr
		@names = names
		@history = history
	end
	def price(i)
		@i = i
		@price = 300
		@tujuan = nil
		@Tawal = nil

		#for searching @tujuan and @Tawal coordinate
		for i in 0...@arr.length
			for j in 0...@arr.length
				if @arr[i][j] == "x"
					@tujuan = [i,j]
				elsif @arr[i][j] == "p"
					@Tawal = [i,j]
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
		

		if @i==0
			@all_price = Array.new
			@all_unit = Array.new
			@all_tujuan = Array.new

			@all_tujuan << @tujuan
			@all_unit << @unit
			@total_price = @unit*@price
			@all_price << @total_price

			puts "4. The price from your location #{@Tawal} to #{@tujuan} is #{@total_price} (#{@unit} unit)"
			puts "5. Yout Route: "
			Maps2.new(@arr,@Tawal,@tujuan).maps2

			@arr[@Tawal[0]][@Tawal[1]] = "."
			@arr[@tujuan[0]][@tujuan[1]] = "p"
			
			@str = "Order from Coordinate #{@Tawal} to #{@tujuan} by #{@names} with the  price is #{@total_price} (#{@unit} unit)"
			@history << @str
		else
			@all_tujuan << @tujuan
			@all_unit << @unit
			@total_price = @unit*@price
			@all_price << @total_price
			@total = 0
			@tunit = 0

			@all_price.each{|e| @total+=e}
			@all_unit.each { |e| @tunit +=e  }

			@tmpstr = " "
			@all_tujuan.each { |e|@tmpstr += " to #{e}" }
			@str = "4. The price from your location #{@Tawal}(#{@unit} unit)"+@tmpstr+" is #{@total} (#{@tunit} unit)\n"
			print @str
			puts "5. Yout Route: "
			Maps2.new(@arr,@Tawal,@tujuan).maps2

			@arr[@Tawal[0]][@Tawal[1]] = "."
			@arr[@tujuan[0]][@tujuan[1]] = "p"
			
			@str = "Order from Coordinate #{@Tawal} to #{@tujuan} by #{@names} with the  price is #{@total_price} (#{@unit} unit)"
			@history << @str.sub("4. The price","Order")
		end
		
	end
end