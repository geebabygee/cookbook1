class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    loop do
      puts "What would you like to do?"
      puts "1. - Add a task"
      puts "2. - List tasks"
      puts "3. - Remove a task"
      puts "4. - Mark a task as complete"
      puts "5. - Exit program"

      choice = gets.chomp.to_i
      case choice
        when 1 then @controller.create
        when 2 then @controller.list
        when 3 then @controller.destroy
        when 4 then @controller.mark_as_complete
        when 5
          puts "👋 Bye!"
          break
      end
    end
  end
end
