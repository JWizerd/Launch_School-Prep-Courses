# 1. - Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.

def greeting(name)
	"hello " + name.to_s
end

greeting("jeremiah")

# 2. - What do the following expressions evaluate to?

# x = 2
	=> 2
# puts x = 2
	2
	=> nil
# p name = "joe"
	"joe"
	=> "joe"
# four = "four"
	=> "four"
# print something = "nothing"
	"nothing"
	nothing => nil

# 3. - Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

def multiply(num1, num2=5)
	num1 * num2
end

multiply(20, 20)

# 4. - What will the following code print to the screen?

	# nothing the value is returned in the middle of the method so puts is never ran so the terminal does not show anything.

# 5. - 1) Edit the method in exercise #4 so that it does print words on the screen. 2) What does it return now?

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

#puts

	"Yippeee!!!!"
	=>nil #this is because we are explicitly saying do not return the value by adding puts as the last action in the method.

# 5. - What does the following error message tell you?
	# 	ArgumentError: wrong number of arguments (1 for 2)
	#   from (irb):1:in `calculate_product'
	#   from (irb):4
	#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'
# you are missing the 1 of the 2 args in the method in order for it to run. Ruby requires that you define all params in methods unless predefined i.e. def stuff (num="2")

