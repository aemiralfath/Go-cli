require_relative "history"
require_relative "maps2"
require_relative "go-ride"
class Price
	def initialize(arr,names,history)
		@arr = arr
		@names = names
		@history = history
	end
	def price
		@price = 300
		@tujuan = nil
		@Tawal = nil
		for i in 0...@arr.length
			for j in 0...@arr.length
				if @arr[i][j] == "x"
					@tujuan = [i,j]
				elsif @arr[i][j] == "p"
					@Tawal = [i,j]
				end
			end
		end

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
		
		@total_price = @unit*@price
		puts "4. The price from your location #{@Tawal} to #{@tujuan} is #{@total_price} (#{@unit} unit)"
		puts "5. Yout Route: "
		Maps2.new(@arr,@Tawal,@tujuan).maps2

		@arr[@Tawal[0]][@Tawal[1]] = "."
		@arr[@tujuan[0]][@tujuan[1]] = "p"
		
		@str = "Order from Coordinate #{@Tawal} to #{@tujuan} by #{@names} with the  price is #{@total_price} (#{@unit} unit)"
		@history << @str
	end
end