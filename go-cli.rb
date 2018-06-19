require_relative "tools"
require_relative "randoms"
class Go_cli
	include Randoms
	attr_accessor :n
	attr_accessor :arr

	def initialize(*args)
		if args.length == 0
			non_parameter
		elsif args.length == 3
			parameters(*args)
		else
			files(*args)
		end
	end
	def non_parameter
		@n = 20
		@arr = Array.new(@n) {Array.new(@n){|i| i = "."}}
		@temp = Array.new
		@x = rand(0...@n)
		@y = rand(0...@n)
		@temp << [@x,@y]
		@arr[@x][@y] = "p"
		driver(@n,@temp,@arr)
		
		Tools.new(@arr,@n).menu
		
	end
	def parameters(*args)
		@n = args[0]
		@arr = Array.new(@n) {Array.new(@n){|i| i = "."}}
		@temp = Array.new
		@temp << [args[1],args[2]]
		@arr[args[1]][args[2]] = "p"

		driver(@n,@temp,@arr)
		Tools.new(@arr,@n).menu
	end
	def files(file)
		file.each do |line|
			vars = line.split(" ")
			puts "#{vars[0]} = #{vars[1]}"
			if vars[0] == "n"
				@n = vars[1].to_i
			elsif vars[0] == "x"
				@x = vars[1].to_i
			elsif vars[0] == "y"
				@y = vars[1].to_i
			end
		end
		@arr = Array.new(@n) {Array.new(@n) {|i| i = "."}}
		@temp = Array.new
		@temp << [@x,@y]
		@arr[@x][@y] = "p"

		driver(@n,@temp,@arr)
		Tools.new(@arr,@n).menu	
	end
end