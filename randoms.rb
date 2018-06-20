module Randoms
	def driver(n,temp,arr)

		@n = n #size map (nxn)
		@temp = temp #temporary dor coordinate in maps
		@arr = arr #array of map

		#get randoms driver coordinate
		@i = 0
		while @i<5
			@x = rand(0...@n)
			@y = rand(0...@n)

			#check @temp include the random coordinate
			if (@temp.include?([@x,@y])) == false

				#if not include, @arr with coordinate @x,@xy will assign "d"
				@arr[@x][@y] = "d"
				@temp << [@x,@y]

			else
				#if include, repeat
				@i-=1
			end
			@i+=1
		end

	end

	#random driver information
	def driver_name
		names = ["Bagus Subagio","Maman Abdurahman","Marsugi Mulyono","Anton Dirgo","Bagus Hadi"]
		drv = names[rand(0...5)]
	end
	def driver_motor
		motor = ["Kawasaki Ninja","CBR 250","Vxion","Harley Davidson","Ducati"]
		drv = motor[rand(0...5)]
	end
	def driver_nopol
		nopol = ["B 1532 CS","B 1823 GJ","B 1201 SE","B 8342 PS","B 1020 GG"]
		drv = nopol[rand(0...5)]
	end
end