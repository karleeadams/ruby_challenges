class Blog
	@@total_posts = [
		'First Blog', 
		'Second Blog', 
		'Third Blog', 
		'etc.'
	]
	
	@@num_posts = 0

	def self.all
		@@total_posts
	end

	def self.add(thing)
		@@total_posts << thing
		@@num_posts += 1
	end

	def self.publish
		@@total_posts.each do |post|
			puts "Title:\n #{post.title}"
			puts "Content:\n #{post.content}"
			puts "Published:\n #{post.created_at}"
		end
	end
end

class BlogPost < Blog
	def self.create
		post = new
		puts "Blog Post Title Here..."
		post.title = gets.chomp
		puts "Blog Content..."
		post.content = gets.chomp
		puts "Written by..."
		post.author = gets.chomp
		post.created_at = Time.now
		post.save
		puts "Do you want to continue to another post? (Y/N)"
		if gets.chomp.downcase == 'y'
			BlogPost.create
		end	 
	end

	attr_accessor :title, :author, :created_at, :content

	def save
		BlogPost.add(self)
	end
end

BlogPost.create
total_posts = BlogPost.all
puts total_posts.inspect
BlogPost.publish

