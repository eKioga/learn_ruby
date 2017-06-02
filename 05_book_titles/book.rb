class Book
# write your code here
	attr_accessor :title

	def title=(value)

		@exclude_list = ["and", "the", "a", "an", "in", "of"]
		
		value_list = value.split(" ")

		value_list[0].capitalize!

		value_list[1..-1].each do |word|
			if !(@exclude_list.include?(word))
				word.capitalize!
			end
		end

		@title = value_list.join(" ")
	end
end
