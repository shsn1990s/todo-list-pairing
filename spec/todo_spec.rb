require 'todo'

RSpec.describe Todo do
  it "Returns a task entry" do
    todo_entry = Todo.new("task_1")
    expect(todo_entry.task).to eq "task_1"
  end
  it "Task is incomplete, returns false" do
    todo_entry = Todo.new("task_1")
    expect(todo_entry.done?).to eq false
  end
  it "Task is complete, returns true" do
    todo_entry = Todo.new("task_1")
    todo_entry.mark_done!
    expect(todo_entry.done?).to eq true
  end
end