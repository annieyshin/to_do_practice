class Task
  attr_reader(:description)

  def initialize(attributes)
    @description = attributes.fetch(:description)
  end

  def self.all
    returned_tasks = DB.exec("SELECT * FROM tasks;")
    tasks = []
    returned_tasks.each() do |task|
      description = task.fetch("description")
      # list_id = task.fetch("list_id").to_i() # The information comes out of the database as a string.
      tasks.push(Task.new({:description => description}))
    end
    tasks
  end

  def ==(another_task)
    self.description().==(another_task.description())
  end

  def save
    DB.exec("INSERT INTO tasks (description) VALUES ('#{@description}');")
  end
end
