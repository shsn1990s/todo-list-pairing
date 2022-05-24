require 'todo'
require 'todo_list'

RSpec.describe "Integration" do
  it "Adds an entry to the todo list" do
    my_todo_list = TodoList.new
    todo_entry = Todo.new("task_1")
    my_todo_list.add(todo_entry)
    expect(my_todo_list.complete).to eq []
  end
  it "Returns completed todo" do
    my_todo_list = TodoList.new
    todo_entry = Todo.new("task_1")
    my_todo_list.add(todo_entry)
    todo_entry.mark_done!
    expect(my_todo_list.complete).to eq [todo_entry]
  end
  it "Returns incomplete todo" do
    my_todo_list = TodoList.new
    todo_entry = Todo.new("task_1")
    my_todo_list.add(todo_entry)
    expect(my_todo_list.incomplete).to eq [todo_entry]
  end
  it "marks all as completed" do
    my_todo_list = TodoList.new
    todo_entry1 = Todo.new("task_1")
    todo_entry2 = Todo.new("task_2")
    my_todo_list.add(todo_entry1)
    my_todo_list.add(todo_entry2)
    my_todo_list.give_up!
    expect(my_todo_list.complete).to eq [todo_entry1, todo_entry2]
  end
end