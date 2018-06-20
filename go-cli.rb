require_relative "tools" #import class Tools
require_relative "randoms"#impotr module Randoms

class Go_cli
	include Randoms #inclue randoms to class Go_cli

	#setter and getter
	attr_accessor :n
	attr_accessor :arr

	#initialize the argument
	def initialize(*args)

		#if argument length is 0, enter method non_parameter
		if args.length == 0
			non_parameter

		#if argument length is 3, enter method parameters
		elsif args.length == 3
			parameters(*args)

		#enter method files
		else
			files(*args)
		end
	end

	def non_parameter
		@n = 20 #size map
		@arr = Array.new(@n) {Array.new(@n){|i| i = "."}}#initialize maps
		@temp = Array.new #initialize temporary

		#random coordinate user
		@x = rand(0...@n)
		@y = rand(0...@n)
		@temp << [@x,@y]
		@arr[@x][@y] = "p"

		#random coordinate driver
		driver(@n,@temp,@arr)
		
		#to class Tools
		Tools.new(@arr,@n).menu
		

	end
	def parameters(*args)
		@n = args[0]
		@arr = Array.new(@n) {Array.new(@n){|i| i = "."}}
		@temp = Array.new

		#coordinate user
		@temp << [args[1],args[2]]
		@arr[args[1]][args[2]] = "p"

		#random coordinate driver
		driver(@n,@temp,@arr)

		#to class Tools
		Tools.new(@arr,@n).menu
	end
	def files(file)
		#get text in file
		file.each do |line|

			#split line
			vars = line.split(" ")

			#initialize @n, @x, @y with if statement
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

		#coordinate user
		@temp << [@x,@y]
		@arr[@x][@y] = "p"

		#random coordinate driver
		driver(@n,@temp,@arr)

		#to class Tools
		Tools.new(@arr,@n).menu	
	end
end