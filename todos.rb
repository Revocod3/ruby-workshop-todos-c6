# ====== Data - START
id = 0

todos = [
  { id: (id = id.next), content: "Fill the weekly feedback", completed: false },
  { id: (id = id.next), content: "Complete Ruby Basics 1", completed: true },
  { id: (id = id.next), content: "Complete Ruby Basics 1", completed: false },
  { id: (id = id.next), content: "Complete Ruby Basics 2", completed: true },
  { id: (id = id.next), content: "Complete Ruby Basics 2", completed: false }
]

# ====== Data -END

# ====== Methods - START
def print_actions_menu
  puts "-" * 65
  puts "add | list | completed | toggle | delete | exit"
end

def todo_list(todos, is_completed: false)
  puts "------------------------Welcome to toDOS------------------------"
  puts ""
  todos.each do |todo|
    puts "#{todo[:id]}. #{todo[:content]}" if todo[:completed] == is_completed
  end
end

def add_todo(todos, id, content)
  new_todo = { id: id, content: content, completed: false }
  todos.push(new_todo)
  puts "Adding => #{new_todo[:id]}. #{new_todo[:content]}"
end

def toggle(todos, ids)
  ids.each do |id|
    found_todo = todos.find{ |todo| todo[:id] == id.to_i }
    found_todo[:completed] = !found_todo[:completed] unless found_todo.nil?
  end
end

def delete_todo(todos, todo_id)
  todos.delete_if { |todo| todo[:id] == todo_id }
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
    id = id.next
    add_todo(todos, id, content)
  when "list"
    todo_list(todos, is_completed: false)
  when "completed"
    todo_list(todos, is_completed: true)
  when "toggle"
    print "Todo ID: "
    ids = gets.chomp.split(',') # "1,2,3,4" => ["1","2","3","4"]
    toggle(todos, ids)
  when "delete"
    print "Delete ID: "
    id = gets.chomp.to_i
    delete_todo(todos, id)
  when "exit"
    puts "Thanks for using toDOS!"
  else
    puts "Invalid action"
  end
  
  print_actions_menu

end
# ====== Main - END
