class LoremIpsum < ApplicationRecord
	validates_presence_of :text, :name

	before_save :remove_new_line

	private

		def remove_new_line
			# self.text.gsub!("\n", " ").gsub!("\r", " ")
			self.text.squish!
		end
end
