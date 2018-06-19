class Maps2
	def initialize(arr,tawal,tujuan)
		@arr = arr
		@Tawal = tawal
		@tujuan = tujuan
	end
	def maps2
		@arr2 = Array.new(@arr[0].length) { Array.new(@arr[0].length) { |i| i = "." }  }
		if @Tawal[0]< @tujuan[0]
			@Tawal[0].upto(@tujuan[0]) {|a| @arr2[a][@Tawal[1]] = "#"  }

			if @Tawal[1]>@tujuan[1]
				(@Tawal[1]-1).downto(@tujuan[1]-1) { |a| @arr2[@tujuan[0]][a] = "#" }
			elsif @Tawal[1]<@tujuan[1]
				(@Tawal[1]+1).upto(@tujuan[1]) { |a| @arr2[@tujuan[0]][a] ="#" }
			end
		elsif @Tawal[0] > @tujuan[0]
			@Tawal[0].downto(@tujuan[0]) { |a| @arr2[a][@Tawal[1]] ="#"  }
			if @Tawal[1]>@tujuan[1]
				(@Tawal[1]-1).downto(@tujuan[1]) { |a| @arr2[@tujuan[0]][a] ="#" }
			elsif @Tawal[1]<@tujuan[1]
				(@Tawal[1]+1).upto(@tujuan[1]) { |a| @arr2[@tujuan[0]][a] ="#" }
			end
		else
			if @Tawal[1]>@tujuan[1]
				(@Tawal[1]).downto(@tujuan[1]) { |a| @arr2[@tujuan[0]][a] ="#" }
			elsif @Tawal[1]<@tujuan[1]
				(@Tawal[1]+1).upto(@tujuan[1]) { |a| @arr2[@tujuan[0]][a] ="#" }
			end
		end

		@arr2[@Tawal[0]][@Tawal[1]] = "p"
		@arr2[@tujuan[0]][@tujuan[1]] = "x"
		@arr2.each do |a|
			print a
			print "\n"
		end
	end
end