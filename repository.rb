class Repository
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end


  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

  def delete_task(index)
    @tasks.delete_at(index)
  end




end
