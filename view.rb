class View

  def display(tasks)
    tasks.each_with_index do |task, index|
      done = task.done? ? "[X]" : "[ ]"
      puts "#{index + 1} - #{task.description} #{done}"
    end
  end

  def ask_user_for_description
    puts "What is the task?"
    print "> "
    return gets.chomp
  end

  def ask_user_for_index
    puts 'What is the task you want to update ?'
    print "> "
    return gets.chomp.to_i - 1
  end

end
