# ====== Data - START
todos = [
  { id: 1, content: "Fill the weekly feedback", completed: false  },
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

def add_todo(todos, content)
  new_id = Time.new.to_i.digits(1000).first
  new_todo = { id: new_id, content: content, completed: false }
  todos.push(new_todo)
  puts "Adding => #{new_todo[:id]}. #{new_todo[:content]}"
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
    print "Content: "
    content = gets.chomp
    add_todo(todos, content)
    print_actions_menu
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
