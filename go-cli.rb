module Randoms
	def driver(n,temp,arr)
		@n = n
		@temp = temp
		@arr = arr
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
	end
	def driver_name
		names = ["Bagus Subagio","Maman Abdurahman","Marsugi","Anton Dirgo","Bagus Hadi"]
		puts "Your driver name is #{names[rand(0...5)]}"
	end
end

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

class Tools
	def initialize(arr,n)
		@arr = arr
		@n = n
	end
	def menu
		while true
			puts "Menu Pilihan:"
			puts "1. Tampilkan Peta"
			puts "2. Pesan Go-ride"
			print "input pilihan: "
			pil = gets.chomp.to_i
			if pil == 1
				Maps.new(@arr,@n).maps
			elsif pil == 2
				Go_ride.new(@arr).pesan
				break
			else
				puts "input salah"
			end
			puts "\n"
		end
	end
end

class Maps
	def initialize(arr,n)
		@arr = arr
		@n = n
	end
	def maps
		i = 0
		@arr.each do |a|
			print a
			if i % @n == 0
				print "\n"
			end
		end
	end
end

class Go_ride
	def initialize(arr)
		@arr = arr
	end
	def pesan
		print "input koordinat tujuan(x,y): "
		koordinat = gets.chomp
		xy = koordinat.split(",")
		@x = xy[0].to_i
		@y = xy[1].to_i
		puts "koordinat tujuan #{@x},#{@y}"
		@arr[@x][@y] = "x"
		ClosestD.new(@arr).driver
	end
end

class ClosestD
	include Math
	extend Randoms
	def initialize(arr)
		@arr = arr
	end
	def driver
		@drv = Array.new
		@kor = Array.new
		@korpass = nil
		for i in 0...@arr.length
			for j in 0...@arr.length
				if @arr[i][j] == "d"
					@drv << [i,j]
				elsif @arr[i][j] == "p"
					@korpass = [i,j]
				end
			end
		end
		@drv.each do |v|
			@x = (v[0]-@korpass[0]).abs
			@y = (v[1]-@korpass[1]).abs
			@kor << Math.sqrt((@x**2)+(@y**2))
		end	
		ClosestD.driver_name
		@z = @kor.rindex(@kor.min)
		puts "Your driver position is on Coordinat #{@drv[@z]} please wait until grab you"
	end
end







puts "Pilihan input program :"
puts "1. Tanpa parameter"
puts "2. Parameter"
puts "3. file"
print "Input pilihan: "
pilihan = gets.chomp.to_i
if pilihan == 1
	a = Go_cli.new
elsif pilihan == 2
	print "Input luas map (n): "
	n = gets.chomp.to_i
	print "Input titik x: "
	x = gets.chomp.to_i
	print "input titik y:"
	y = gets.chomp.to_i
	a = Go_cli.new(n,x,y)
elsif pilihan == 3
	a = Go_cli.new(File.open("input.txt", "r"))
else
	puts "input salah"	
end