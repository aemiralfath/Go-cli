class Maps
	def initialize(arr,n)
		@arr = arr
		@n = n
	end
	def maps
		puts "\n"
		puts "============================================"
		puts "                Go-cli Maps"
		puts "============================================"
		puts "\n"

		@arr.each {|a| print a;puts "\n"}
		puts "\n"
		puts "'d' = Driver, 'p'= passanger"
		puts "============================================"
		puts "\n"
	end
end