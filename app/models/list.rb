class List < ActiveRecord::Base
  # Remember to create a migration!
  has_many :tasks

  def add_task(description)
  	task.create({:description => description})
  end

  def list_tasks
  	task.where(list_id: self.id)
  end

end
