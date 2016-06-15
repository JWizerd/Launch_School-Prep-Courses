# 1. - Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.

	arr = [1, 3, 5, 7, 9, 11]
	number = 3

	ANSWER: arr.include?(3)

# 2. - What will the following programs return? What is value of arr after each?

	arr = ["b", "a"]
  arr = arr.product(Array(1..3))
  arr.first.delete(arr.first.last)

	output: [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
	ANSWER: 1

	# output: [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
	# ANSWER: [1, 2, 3]

# 3. - How do you print the word "example" from the following array?

	arr = [["test", "hello", "world"],["example", "mem"]]

	ANSWER: print arr[1][0]

# 4. - What does each method return in the following example?

	arr = [15, 7, 18, 5, 12, 8, 5, 1]

	1. arr.index(5)

	ANSWER: 3 #index of 5 first occurence

	2. arr.index[5]

	ANSWER: error no incorrect syntax

	3. arr[5]

	ANSWER: 8 #item at 5th index

# 5. - What is the value of a, b, and c in the following program?

	string = "Welcome to America!"
	a = string[6]
	b = string[11]
	c = string[19]

	ANSWER a = "e"
	ANSWER b = "A"
	ANSWER c = nil

# 6. - You run the following code...

	names = ['bob', 'joe', 'susan', 'margaret']
	names['margaret'] = 'jody'

# TypeError: no implicit conversion of String into Integer
#   from (irb):2:in `[]='
#   from (irb):2
#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

	ANSWER: You have to use an index or a method to change the value of an array

	2.2.3 :016 > names = ['bob', 'joe', 'susan', 'margaret']
	=> ["bob", "joe", "susan", "margaret"]
	2.2.3 :017 > names.pop
	=> "margaret"
	2.2.3 :018 > names << "jody"
	=> ["bob", "joe", "susan", "jody"]

	OR

	2.2.3 :021 > names = ['bob', 'joe', 'susan', 'margaret']
	=> ["bob", "joe", "susan", "margaret"]
	2.2.3 :022 > names[3] = "jody"
	=> "jody"
	2.2.3 :023 > names
	=> ["bob", "joe", "susan", "jody"]
	2.2.3 :024 >

# 7. - Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.

	a = [1, 2, 3, 4]

	b = a.map { |x| x+2 }

	p a
	p b



