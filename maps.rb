class Maps
	def initialize(arr,n)
		@arr = arr
		@n = n
	end
	def maps
		puts "\n"
		puts "Map :"
		@arr.each {|a| print a;puts "\n"}
		puts "'d' = Driver, 'p'= passanger"
	end
end