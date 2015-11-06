class Task < ActiveRecord::Base
	belongs_to :list
	has_many :taggings
	has_many :tags, through: :taggings
  # Remember to create a migration!

end
