class Go_cli

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
		@arr = Array.new(@n) {Array.new(@n)}
		@temp = Array.new
		@i = 0
		while @i<5
			@x = rand(0...@n)
			@y = rand(0...@n)
			if (@temp.include?([@x,@y])) == false
				@arr[@x][@y] = "d"
				@temp << [@x,@y]
			else
				@i-=1
			end
			@i+=1
		end
		@i =0
		while @i<5 
			@x = rand(0...@n)
			@y = rand(0...@n)
			if (@temp.include?([@x,@y])) == false
				@arr[@x][@y] = "p"
				@temp << [@x,@y]
			else
				@i-=1
			end
			@i+=1
		end
	end
	def parameters(*args)
		@n = args[0]
		@arr = Array.new(@n) {Array.new(@n)}
		@temp = Array.new
		@temp << [args[1],args[2]]
		@i = 0
		while @i<5
			@x = rand(0...@n)
			@y = rand(0...@n)
			if (@temp.include?([@x,@y])) == false
				@arr[@x][@y] = "d"
				@temp << [@x,@y]

			else
				@i-=1
			end
			@i+=1
		end
		@arr[args[1]][args[2]] = "p"
	end
	def files(*args)
	end

end
puts "Pilihan input :"
puts "1. Tanpa parameter"
puts "2. Parameter"
puts "3. file"
print "Input pilihan: "
pilihan = gets.chomp.to_i
if pilihan == 1
	a = Go_cli.new
	puts a.arr
elsif pilihan == 2
	print "Input luas map (n): "
	n = gets.chomp.to_i
	print "Input titik x: "
	x = gets.chomp.to_i
	print "input titik y:"
	y = gets.chomp.to_i
	a = Go_cli.new(n,x,y)
	puts a.arr
elsif pilihan == 3

else
	puts "input salah"	
end