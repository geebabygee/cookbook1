require_relative "task"
require_relative "repository"
require_relative "controller"
require_relative "view"
require_relative "router"

task1 = Task.new("do flashcards")
task2 = Task.new("play ukelele")
repo = Repository.new
view = View.new
controller = Controller.new(view, repo)
router = Router.new(controller)

# controller.create
# controller.create
# controller.list

# # controller.mark_as_complete
# # controller.list
# controller.destroy
# controller.list
# p repo

router.run
