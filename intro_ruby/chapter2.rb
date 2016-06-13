# 1. - Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included. name.rb exercise included in this file.

puts "What's your name?"
name = gets.chomp
puts "your name is #{name}"

# 2. - Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years. Below is the output for someone 20 years old.

puts "how old are you?"
age = gets.chomp.to_i
puts "in 10 years you will be #{age + 10}"
puts "in 20 years you will be #{age + 20}"
puts "in 30 years you will be #{age + 30}"
puts "in 40 years you will be #{age + 40}"

# 3. - Add another section onto name.rb that prints the name of the user 10 times. You must do this without explicitly writing the puts method 10 times in a row. Hint: you can use the times method to do something repeatedly.

puts "What's your name?"
name = gets.chomp
puts "your name is #{name}"
puts (name + " ") * 10

# 4. - Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. Then outputs their full name all at once.

puts "first name?"
first_name = gets.chomp
puts "last name?"
last_name = gets.chomp
puts first_name + " " + last_name

# 5. - Look at the following programs...

# the second gives an error because the var was initialized inside a local scope and called outside of the local scope.

# 6. - What does the following error message tell you?

	# NameError: undefined local variable or method `shoes' for main:Object
  # from (irb):3
  # from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

 # the variable shoes needs to called locally in order to use it inside the given method.