# 1. - What does the each method in the following program return after it is finished executing?

	x = [1, 2, 3, 4, 5]
	x.each do |a|
	  a + 1
	end

	#ANSWER:
	2, 3, 4, 5, 6

# # 2. - Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

	loop do
		puts "type STOP to stop"
		stop = gets.chomp
		if stop == "STOP"
			break
		end
	end

# 3. - Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

	[1,2,3,4,5,6,7,8].each_with_index do |val, index|
		puts "index: #{index} val: #{val}"
	end

# 4. - Write a method that counts down to zero using recursion.

	def count_down(start)
	  puts start
	  if start > 0
	    count_down(start - 1)
	  end
	end




