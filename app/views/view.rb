class View

	def get_input
		gets.chomp
	end

	def display_s(string)
		puts string
	end

	def display_task_table(task_array)
		# display table info 
		string = ""
		task_array.each do |obj|
			string += "#{obj.description}.\n"
		end
		
	end

end