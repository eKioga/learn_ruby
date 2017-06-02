#write your code here
$phoneme_list = ["ch", "thr", "sch", "qu"]

$punctuation = [".", ",", "?", "!", ":", ";", "(", ")", "[", "]", "{", "}", "\"", "\'"]

$vowels = ["a", "e", "i", "o", "u"]

def translate(words)

	words = words.split(" ")

	word_list = []

	words.each do |word|

	temp = ""
	is_capitalized = false

		# check if word is capitalized
		if word[0] =~ /[A-Z]/
			is_capitalized = true
		end

		word.downcase!

		word = word.split("")
	
		# until the word begins with a vowel, remove consonants from the front and add the end
		
		# check for and remove punctuation
		if $punctuation.include?(word[-1])
			temp = word[-1]
			word.pop
		end
 
		until $vowels.include?(word[0])
		
			if word[0..1].join == "qu"
				2.times do
					word.push(word.shift)
				end
			else 
				word.push(word.shift)
			end
		end

		word = word + ["a", "y"]
		
		# if there was punctuation, add it again
		if temp != ""
			word.push(temp)
		end

		word = word.join("")
   	
		# if was capitalized, capitalize first letter
		if is_capitalized
			word.capitalize!
		end

		word_list.push(word)
	end

	return word_list.join(" ")
end