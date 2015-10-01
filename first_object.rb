class Songs
	attr_accessor :song_name, :singer_name

	def dance
		return "bust a move!"
	end
end

my_song = Songs.new
my_song.name= "Shout"
songname = my_song.name
puts "#{songname} is on so you know you can't resist but #{my_song.dance}"