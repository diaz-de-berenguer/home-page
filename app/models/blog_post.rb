class BlogPost < ApplicationRecord
	extend FriendlyId
	friendly_id :slug_it, use: :slugged

	validates_presence_of :title, :body

	def link
		Rails.application.routes.url_helpers.blog_post_path(self)
	end

	private

		def slug_it
			day   = Time.now.strftime("%d-%m-%y")
			# title = self.title
			rand  = SecureRandom.hex(6)
			return [ [day, self.title, rand].join('-') ]
		end
end
