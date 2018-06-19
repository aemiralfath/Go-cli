
class History
	def initialize(history)
		@history = history
	end
	def history
		File.open("history.txt", "w+") { |io| @history.each { |e| io.puts(e) } }
		a = File.open("history.txt", "r")
		puts "History : "
		i = 1
		a.each do |b|
			puts "#{i}. #{b}"
			i+=1
		end
	end
	
end