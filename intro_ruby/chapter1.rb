# 1. - Add two strings together that, when concatenated, return your first and last name as your full name in one string.

print "Jeremiah" + "Wodke"

# 2. - Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the:
# 1) thousands place
# 2) hundreds place
# 3) tens place
# 4) ones place

thousands = 2500 / 1000
hundreds = 2500 % 1000 / 100
tens = 2500 % 1000 % 100 / 10
ones = 2500 % 1000 %100 % 10

# 3. - Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. The output for your program should look something like this.

movies = {
	:avatar => '2010'
	:another_movie => '2012'
	:one_more_movie => '2014'
}

puts movies[:avatar]
puts movies[:another_movie]
puts movies[:one_more_movie]

# 4. - Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.

movie_dates = [2010, 2012, 2014]

puts movie_dates[0]
puts movie_dates[1]
puts movie_dates[2]

# 5. - Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

# 6. - Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.

puts 5.5 * 5.5
puts 4.25 * 4.25
puts 3.14 * 3.14

# 7. - What does the following error message tell you?

#SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
    #from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

# you used the wrong type of closing bracket. You use ')' when you should have used '}'
