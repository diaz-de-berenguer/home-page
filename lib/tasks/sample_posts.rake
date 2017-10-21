namespace :sample do
	desc "Some posts"
	task :blog_posts, [:env] => [:environment] do
		puts "\n\nStarting"
		err    = []
		lorems = LoremIpsum.all
		puts "Lorems: #{lorems.count}"

		if Rails.env == 'development'
			lorems.each do |l|
				post = BlogPost.new(
					title:     l.name,
					body:      l.text,
					published: true
				)

				if post.save
					print "."
				else
					err << post.errors.full_messages
				end
			end
		end

		puts "\n\nErrors (#{err.count}):"
		puts err.join("\n")
	end
end
