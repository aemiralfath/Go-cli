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
		drv = names[rand(0...5)]
	end
end