require_relative "task"
class Controller
  def initialize(view, repo)
    @view = view
    @repo = repo
  end

  def create
    title = @view.ask_user_for("task title")
    task = Task.new(title)
    @repo.add(task)
  end

  def list
    tasks = @repo.all
    @view.display(tasks)
  end

  def mark_as_complete
    list
    index = @view.ask_user_for("number of task to mark as complete?").to_i - 1
    task = @repo.find(index)
    task.mark_as_complete!
  end

  def destroy
    list
    index = @view.ask_user_for("number of task to delete?").to_i - 1
    @repo.delete_task(index)
  end
end
