require_relative 'task'

class Controller

  def initialize(repository, view)
    @repository = repository
    @view = view
  end

  def display
    # Find all tasks
    tasks = @repository.list
    # Display all taks
    @view.display(tasks)
  end

  def add_task
    # ask user task description
    description = @view.ask_user_for_description
    # create Task
    task = Task.new(description)
    # add task to repository
    @repository.add(task)
  end

  def mark_as_done
    # ask user task index
    index = @view.ask_user_for_index
    # find task in repository
    task = @repository.find(index)
    # update task with done at true
    task.mark_as_done!
  end
end
