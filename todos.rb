# ====== Data - START
todos = [
  { id: 1, content: "Fill the weekly feedback", completed: false },
  { id: 2, content: "Complete Ruby Basics 1",  completed: false  },
  { id: 3, content: "Complete Ruby Basics 2",  completed: false  }
]
# ====== Data -END

# ====== Methods - START
def print_actions_menu
  puts "-" * 65
  puts "add | list | completed | toggle | delete | exit"
end

def todo_list(todos)
  puts "------------------------Welcome to toDOS------------------------"
  puts ""
  todos.each do |todo|
    puts "#{todo[:id]}. #{todo[:content]}"
  end
end
# ====== Methods - END

# ====== Main - START
todo_list(todos)
print_actions_menu

action = nil
while action != "exit"
  print "action: "
  action = gets.chomp
  
  case action
  when "add"
    puts "Add todo"
  when "list"
    puts "List uncompleted"
  when "completed"
    puts "List completed"
  when "toggle"
    puts "Toggle"
  when "delete"
    puts "Todo Delete"
  when "exit"
    puts "Thanks for using toDOS!"
  else 
    puts "Invalid action"
  end

end
# ====== Main - END
