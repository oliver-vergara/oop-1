require_relative "list"
require_relative "task"

# Create list
list = List.new

# Create tasks and add them to the list
list.add_task("Feed the cat", 2)
list.add_task("Take out trash", 6)
list.add_task("Mow the lawn", 4)

# Print out the second task in the list
puts "Second task:"
puts list.tasks[1].name
puts "---------"

# Get an array containing the names of all incomplete tasks from the list
puts "Incomplete Tasks:"
puts list.incomplete_tasks
puts "--------"









# Mark the first task from the list as complete
list.tasks[0].complete!
puts list.tasks[0].complete
list.tasks[0].toggle_complete!
puts list.tasks[0].complete
list.tasks[0].toggle_complete!
puts list.tasks[0].complete


# Print out the incomplete tasks again
puts "Incomplete Tasks:"
puts list.incomplete_tasks
puts list.number_of_incomplete_tasks
list.delete_complete_tasks
p list.tasks
list.tasks[2].priority = 8
puts list.tasks.last.priority
p list
p list.rank_priorities
