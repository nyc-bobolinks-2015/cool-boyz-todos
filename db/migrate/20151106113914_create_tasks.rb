class CreateTasks < ActiveRecord::Migration
  def change
  	  create_table :tasks do |t|
      t.string   :description, { null: false, limit: 140 }
      t.boolean  :complete, { null: false }
      t.integer  :list_id

      t.timestamps
    end
  end
end