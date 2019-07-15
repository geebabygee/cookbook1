class View

  def ask_user_for(something)
    puts "What's the #{something}?"
    gets.chomp
  end

  def display(tasks)
    tasks.each_with_index do |task, index|
      x = task.completed ? "x" : " "
      puts "#{index + 1}. [#{x}] #{task.title}"
    end
  end
end
