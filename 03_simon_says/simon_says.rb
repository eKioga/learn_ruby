#write your code here
def echo(sentence)
	return sentence
end

def shout(sentence)
	return sentence.upcase
end

def repeat(sentence, number = 2)
	
	new_sentence = sentence

	(number - 1).times do 
		new_sentence = new_sentence + " " + sentence
	end
	
	return new_sentence
end

def start_of_word(word, number_of_letters)

	return word[0..number_of_letters - 1]

end

def first_word(sentence)

	word_list = sentence.split(" ")
	
	return word_list[0]
end

def titleize(sentence)
	
	word_list = sentence.split(" ")

	exclude_list = ["and", "the", "over", "a", "on"]

	word_list[0].capitalize!

	for i in 1..word_list.length - 1 do
		
		unless exclude_list.include? word_list[i]
			word_list[i].capitalize!
		end
	end

	return word_list.join(" ")
end