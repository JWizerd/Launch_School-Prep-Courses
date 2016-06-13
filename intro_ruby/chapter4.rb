# 1. - Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.

# 	1. (32 * 4) >= 129 			FALSE
# 	2. false != !true 			FALSE
# 	3. true == 4 						FALSE
# 	4. false == (847 == '874') TRUE
# 	5. (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false TRUE

# 2. - Write a method that takes a string as argument. The method should return the all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs! http://ruby-doc.org/core-2.1.0/String.html

	def all_caps(words)
		words = words.to_s
		if words.length < 10
			puts "not 10 chars"
		else
			puts words.upcase
		end
	end

	all_caps("hello")
	all_caps("sdfsdsdfasfsd")

# 3. - Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.
#
	puts "enter a number between 0 and 100"
	number = gets.chomp.to_i

	def number_range(number)
		if number > 0 && number <= 50
			puts "number is between 0 and 50"
		elsif number >= 51 && number <= 100
			puts "number between 51 and 100"
		elsif number > 100
			puts "why such a large number?"
		end
	end

	number_range(num)

# 4. - What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.

 1. '4' == 4 ? puts("TRUE") : puts("FALSE") # FALSE
 2. x = 2
   if ((x * 3) / 2) == (4 + 4 - x - 3)
     puts "Did you get it right?"
   else
     puts "Did you?"
   end # DID YOU GET IT RIGHT?
 3. y = 9
   x = 10
   if (x + 1) <= (y)
     puts "Alright."
   elsif (x + 1) >= (y)
     puts "Alright now!"
   elsif (y + 1) == x
     puts "ALRIGHT NOW!"
   else
     puts "Alrighty!"
   end # ALRIGHT NOW!

 # 5. - Rewrite your program from exercise 3 using a case statement. Wrap the statement from exercise 3 in a method and wrap this new case statement in a method. Make sure they both still work.

 	def number_range2 (number)
	 	case number
		when 0..50
		puts "your number is between 0 and 50"
		when 51..100
		puts "your number is between 51 and 100"
		else
			if number < 0
				puts "can't enter a negative number"
			elsif number > 100
				puts "over 100"
			end
		end
	end

	number_range2(number)


 # 6. - When you run the following code...

   def equal_to_four(x)
    if x == 4
        puts "yup"
      else
        puts "nope"
  	end

    equal_to_four(5)

# 		#test_code.rb:96: syntax error, unexpected end-of-input, expecting keyword_end
#
# 		You forgot to close your method with another end tag.


