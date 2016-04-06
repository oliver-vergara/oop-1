

class List
  attr_reader :tasks

  def initialize
    @tasks = []
  end

  def add_task(task, priority)
    new_task = Task.new(task, priority)
    @tasks << new_task
  end

  def incomplete_tasks #returns the NAMES of incomplete tasks
    incomplete_task_names = []
    @tasks.each do |task|
      unless task.complete
        incomplete_task_names << task.name
      end
    end
    return incomplete_task_names
  end

  def complete_tasks
    complete_task_names = []
    @tasks.each do |task|
      if task.complete
        complete_task_names << task.name
      end
    end
    p complete_task_names
    return complete_task_names
  end

  def number_of_incomplete_tasks
    incomplete_tasks.length
  end

  def delete_complete_tasks
    tasks_to_delete = complete_tasks
    tasks_to_delete.each do |task_to_delete|
      tasks.delete(task_to_delete)
      puts "Removed #{task_to_delete} from the list."
    end
  end

  def rank_priorities
    lowest_to_highest = tasks.sort_by do |task|
      task.priority
    end
    lowest_to_highest.reverse
    # only_names = []
    # lowest_to_highest.each do |task|
    #   only_names << task.name
    # end
    # only_names
    lowest_to_highest.map(&:name).reverse
  end
end