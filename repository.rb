class Repository

  def initialize
    @tasks = []
  end

  def list
    @tasks
  end

  def add(task)
    @tasks << task
  end

  def delete(task_index)
    @tasks.delete_at(task_index)
  end

  def find(index)
    @tasks[index]
  end

end
