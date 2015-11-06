


class Controller

	def initialize
		@view = View.new
		List.create({:name => "Sample List"})
	end

	def run
		prompt_for_continue
	end

	def prompt_for_query
		# Finds out what information the user wants
		view.display_s("Options: (Choose number)")
		view.display_s("a) Add Task")
		view.display_s("b) List Tasks")
		view.display_s("c) Delete Task")
		view.display_s("d) Complete Task")
		answer = view.get_input.downcase 
		case answer
		when 'a'
			view.display_s("Please enter a description.")
			desc = view.get_input
			list.add_task(desc)
		when 'b'
			display_task_table(list.list_tasks)
		end
	end



	def prompt_for_continue
		# Finds out if user wants to continue using the program
		view.display_s("Would you like to run a query? (y/n)")
		view.get_input.upcase == 'Y' ? true : false
	end


end