class Music
	def set_name= (name)
		@name = name
	end

	def get_name
		return @name
	end

	def set_singer= (singer_name)
		@singer_name = singer_name
	end

	def get_singer
		return @singer_name
	end

end

class Dance < Music
	def beat
		return "bust a move!"
	end
end

class Elevator < Music
	def slow
		return "nice and smooth."
	end
end

class Exercise < Music
	def fast
		return "pump it up!"
	end
end


my_dance = Dance.new
my_dance.set_name= "Shout"
dancename = my_dance.get_name

my_elevator = Elevator.new
my_elevator.set_name= "Jazzavator"
elevatorname = my_elevator.get_name
 
my_exercise = Exercise.new
my_exercise.set_name= "All I Do is Win"
exercisename = my_exercise.get_name
 
puts "#{dancename} makes you #{my_dance.beat} 
#{elevatorname} has you saying it's #{my_elevator.slow} 
and #{exercisename} allows you to #{my_exercise.fast}."
 
puts my_dance.inspect
puts my_elevator.inspect
puts my_exercise.inspect
