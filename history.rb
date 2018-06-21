
class History
	def initialize(history)
		@history = history
	end
	def history
		#open and write a history
		File.open("history.txt", "w+") { |io| @history.each { |e| io.puts(e) } }

		#read file
		a = File.open("history.txt", "r")

		#display a file
		puts "==========================="
		puts "           History "
		puts "==========================="
		puts "\n"
		i = 1
		a.each do |b|
			puts "#{i}. #{b}"
			i+=1
		end
	end
	
end