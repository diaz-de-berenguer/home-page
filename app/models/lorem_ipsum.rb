class LoremIpsum < ApplicationRecord
	validates_presence_of :text, :name

	before_save :remove_new_line

	def text_for(length = nil, lines = nil)
		# To account for strings
		length = length.to_i if length
		lines  = lines.to_i  if lines

		# Result will be returned
		result   = self.text

		# Length is the desired length of the string -- defaults to the length of the text.
		length         ||= self.text.length
		puts length
		current_length   = self.text.length
		while current_length < length do
			result += " " + self.text
			current_length += current_length
		end

		result = result[0...length]

		if lines
			text_array = result.split(" ")
			text_array = text_array.in_groups(lines.to_i, false)
			result     = text_array.map{ |a| a.join(" ") }.join("\r\n")
		end

		return result
	end

	private

		def remove_new_line
			# self.text.gsub!("\n", " ").gsub!("\r", " ")
			self.text.squish!
		end
end
