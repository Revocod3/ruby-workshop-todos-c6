todos = [
  { id: 1, content: "Fill the weekly feedback", completed: false },
  { id: 2, content: "Complete Ruby Basics 1",  completed: false  },
  { id: 3, content: "Complete Ruby Basics 2",  completed: false  }
]

def print_actions_menu
  puts "-" * 65
  puts "add | list | completed | toggle | delete | exit"
end

def todo_list(todos)
  todos.each do |todo|
    puts "#{todo[:id]}. #{todo[:content]}"
  end
end

todo_list(todos)
