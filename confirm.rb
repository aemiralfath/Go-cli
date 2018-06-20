require_relative "maps2"
def confirm(arr,z,tawal,tujuan)
	@arr = arr
	@z = z
	@Tawal = tawal
	@tujuan = tujuan

	print "Do you accepted for the trip (y/n) : "
	@acc = gets.chomp
		if @acc == "y"
			system "clear"
			puts "Your driver location"
			Maps2.new(@arr,@z,@Tawal).maps2
			puts "\n"
			puts "Please wait until your driver arrive......"
			puts "\n"
			puts "Your driver is arrive, lets go!"
			Maps2.new(@arr,@Tawal,@tujuan).maps2
			@arr[@Tawal[0]][@Tawal[1]] = "."
			@arr[@tujuan[0]][@tujuan[1]] = "p"

			#order display when it finish
			puts "\n"
			print "Your Journey is completed, finish? (y/n): "
			confirm = gets.chomp

			#if no
			if confirm == "n"
				@finish = confirm	
				system "clear"
			#if yes	
			elsif confirm == "y"
				@finish = confirm
				
				puts "\n"
				print "Please give #{@names} rated (1-5) : "
				@rate = gets.chomp

				@d = DateTime.now
				@str = "Order from Coordinate #{@temp} to #{@tmpstr} by #{@names} with the  price #{@total} (#{@tunit} unit) : #{@rate} stars (#{@d.strftime("%d/%m/%Y [%H:%M]")})"
				@history << @str
			#if wrong input	
			else
				@finish = "0"
			end

		else 
			@finish = "0"
		end
	@finish
end