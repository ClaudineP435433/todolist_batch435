class Router

  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      # print_menu
      print_menu
      # User choice
      action = gets.chomp.to_i
      # Do the right the action
      case action
      when 1 then @controller.display
      when 2 then @controller.add_task
      when 3 then @controller.mark_as_done
      when 0 then break
      else
        puts "Wrong choice"
      end
    end
  end

  def print_menu
    puts "-"*20
    puts "Welcome in ToDoList"
    puts "-"*20
    puts "1 - List of Tasks"
    puts "2 - Add a Task"
    puts "3 - Mark a Task as Done"
    puts "0 - Exit"
  end

end
