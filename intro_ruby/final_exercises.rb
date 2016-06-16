# 1. - Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

	arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

	arr.each { |x| puts x }

# 2. - Same as above, but only print out values greater than 5.

	arr.each do |x|
		if x > 5
			puts x
		end
	end

# 3. - Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

	arr2 = []

	arr.select do |x|
		if x.odd?
			arr2 << x
		end
	end

	p arr2

# 4. - Append "11" to the end of the original array. Prepend "0" to the beginning.

	arr.push(11)

	arr.insert(0, 0)

# 5. - Get rid of "11". And append a "3".

	arr.pop

	arr.push(3)

# 6. - Get rid of duplicates without specifically removing any one value.

	arr.uniq

# 7. - What's the major difference between an Array and a Hash?

	Array = an array can simply be thought of as a collection of data

	Hash = a hash can be thought of a collection of data too except that a hash contains key value pairs. it it more specific with data than an 	array.

# 8. - Create a Hash using both Ruby syntax styles.

	hats = { :kind => 'top hat' }

	hats = { kind: 'top hat' }

# 9. - Suppose you have a hash h = {a:1, b:2, c:3, d:4}

	h = {a:1, b:2, c:3, d:4}

	h[:b]

	h[:e] = 5

	h.select do |k,v|
		if v < 3.5
			h.delete(k)
		end
	end

# 10. - Can hash values be arrays? Can you have an array of hashes? (give examples)

	Yes.

	hash = {
		stuff: ["things", "more things", "more more things"]
	}

	arr = [
		{
			stuff: ["things", "more things"]
		}
	]

# 11. - Look at several Rails/Ruby online API sources and say which one you like best and why.

 	https://ruby.libhunt.com/project/jekyll

  #Jekyll is a simple, blog-aware, static site generator perfect for personal, project, or organization sites. Think of it like a file-based CMS, without all the complexity. Jekyll takes your content, renders Markdown and Liquid templates, and spits out a complete, static website ready to be served by Apache, Nginx or another web server. Jekyll is the engine behind GitHub Pages, which you can use to host sites right from your GitHub repositories.

  # couldn't have put it better myself. The ability to render templates from GitHub repos as well as eliminating the unnecessary code such as in a wordpress theme. Jekyll is light, fast and gets the job done.

# 12. - Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.

	contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

	contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

	contacts["Joe Smith"][:email] = contact_data[0][0]
	contacts["Joe Smith"][:address] = contact_data[0][1]
	contacts["Joe Smith"][:phone] = contact_data[0][2]
	contacts["Sally Johnson"][:email] = contact_data[1][0]
	contacts["Sally Johnson"][:address] = contact_data[1][1]
	contacts["Sally Johnson"][:phone] = contact_data[1][2]

# 13. - Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?


contacts["Joe Smith"][:email]

contacts["Sally Johnson"][:phone]

# 14. - In exercise 12, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

contacts.each_with_index do |(person, info), index|
			contacts[person] = contact_data[index]
		end

	puts contacts


contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

	contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

	fields = [:email, :address, :phone]

	fields.each_with_index do |(k,v), index|
		contacts
	end

# 15. - Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

	arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
	arr.delete_if do |item| item.start_with?("s", "w") end

# 16. - turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] ? ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

	arr = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']


  arr.map {|word| word.split(" ")}.flatten

# 17. - What will the following program output?

	hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
	hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

	if hash1 == hash2
	  puts "These hashes are the same!"
	else
	  puts "These hashes are not the same!"
	end

	#output: puts "These hashes are the same!"
