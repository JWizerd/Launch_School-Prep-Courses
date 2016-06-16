# 1. - Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.

	family = {  uncles: ["bob", "joe", "steve"],
	            sisters: ["jane", "jill", "beth"],
	            brothers: ["frank","rob","david"],
	            aunts: ["mary","sally","susan"]
	          }

	merge_fam = family.select { |k,v| k == :sisters || k == :brothers }

	immediate = merge_fam.values.flatten

	puts immediate

# 2. - Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

	merge! is destructive meaning that is mutates the caller

	merge creates a new hash so it does not mutate the caller

	stuff = { hat: "baseball cap", shirt: "t-shirt" }

	food = { drinks: "soda", vegetables: "carrots" }

	food.merge!(stuff)

	#output:

	2.2.3 :003 > food.merge!(stuff)
	 => {:drinks=>"soda", :vegetables=>"carrots", :hat=>"baseball cap", :shirt=>"t-shirt"}
	2.2.3 :004 > food
	 => {:drinks=>"soda", :vegetables=>"carrots", :hat=>"baseball cap", :shirt=>"t-shirt"}
	2.2.3 :005

	food.merge(stuff)

	#output

	2.2.3 :003 > food.merge(stuff)
	 => {:drinks=>"soda", :vegetables=>"carrots", :hat=>"baseball cap", :shirt=>"t-shirt"}
	2.2.3 :004 > food
	 => {:drinks=>"soda", :vegetables=>"carrots"}
	2.2.3 :005 > stuff
	 => {:hat=>"baseball cap", :shirt=>"t-shirt"}
	2.2.3 :006 >

# 3. - Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

	food = {
		drinks: ["soda", "water", "beer"],
		salads: ["ceasar", "traditional", "just lettuce"],
	}
	 food.each_key { |key| puts key}
	 food.each_value { |val| puts val}
	 food.each { |key,val| puts "these are the #{key} that I have: " + val.join(", ")  }

# 4. - Given the following expression, how would you access the name of the person?

	person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

	ANSWER: person[:name]

# 5.- What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.

	person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

	puts person.value?('Bob')

# 6. - Given the array... Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

	["demo", "dome", "mode"]
	["neon", "none"]

# iterate through the array, check to see if a word is an anagram to another word.
# if so, append that word to a hash

	words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

  result = {}

	words.each do |x|
		key = x.split('').sort.join # x is only changing in the key variable that's how we can get the unchanged words as values in our keys
		if result.has_key?(key)
			result[key].push(x)
		else
			result[key] = [x] # i'm not sure why this has to be in an array
		end
	end

	puts result

# 7. - Given the following code... What's the difference between the two hashes that were created?

		x = "hi there"
		my_hash = {x: "some value"}
		my_hash2 = {x => "some value"}

		#output: x = "hi there"
		2.2.3 :001 > x = "hi there"
		 => "hi there"
		2.2.3 :002 > my_hash = {x: "some value"}
		 => {:x=>"some value"}
		2.2.3 :003 > my_hash2 = {x => "some value"}
		 => {"hi there"=>"some value"}
		2.2.3 :004 >

		the second hash convention allows you to use variable names as your key.

# 8. - If you see this error, what do you suspect is the most likely problem?

		#NoMethodError: undefined method `keys' for Array

		ANSWER: B
