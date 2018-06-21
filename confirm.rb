require_relative "maps2"

def confirm(arr,z,tawal,tujuan,price,unit)
	#initialize
	@arr = arr
	@z = z
	@Tawal = tawal
	@tujuan = tujuan
	@total = price
	@tunit = unit
	Maps2.new(@arr,@Tawal,@tujuan).maps2
	puts "\n"
	print "Do you accept for the trip (y/n) : "
	@acc = gets.chomp

		#if yes do go_to destination
		if @acc == "y"

			#display for waiting driver to passanger
			system "clear"
			puts "Your driver location : #{@z}"
			puts "\n"
			puts "Please wait until your driver arrive......"
			#route driver to passanger
			Maps2.new(@arr,@z,@Tawal).maps2
			sleep 10

			#display for passanger to destination
			puts "\n"
			puts "~~~~~~~Your driver arrive, lets go!~~~~~~~"
			puts "\n"
			#route passanger to destination
			Maps2.new(@arr,@Tawal,@tujuan).maps2
			@arr[@Tawal[0]][@Tawal[1]] = "."
			@arr[@tujuan[0]][@tujuan[1]] = "p"

			#display when the trip finish
			puts "\n"
			puts "On the way......."
			sleep 10
			puts "~~~~~ ARRIVE ~~~~"
			puts "\n"
			
			#ASK to finish
			puts "\n"
			print "Your trip completed, finish? (y/n): "
			confirm = gets.chomp

			#if no
			if confirm == "n"
				@finish = confirm	
				system "clear"

			#if yes	
			elsif confirm == "y"
				@finish = confirm
				
				#ask to give rate to driver
				puts "\n"
				print "Please give #{@names} rated (1-5) : "
				@rate = gets.chomp

				#save history trip to file
				@d = DateTime.now
				@str = "Order from Coordinate #{@temp} to #{@tmpstr} by #{@names} with the  price #{@total} (#{@tunit} unit) : #{@rate} stars (#{@d.strftime("%d/%m/%Y [%H:%M]")})"
				@history << @str

			#if no or wrong input go to 0 and cancel the order	
			else
				@finish = "0"
			end

		else 
			@finish = "0"
		end
	@finish
end