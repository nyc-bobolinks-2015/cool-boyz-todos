class Tagging < ActiveRecord::Base
	belongs_to :task
  belongs_to :tag
  # Remember to create a migration!
end
