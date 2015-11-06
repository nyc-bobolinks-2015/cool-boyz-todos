class CreateLists < ActiveRecord::Migration
  def change
    create table :lists do |t|
      t.name :name

      t.timestamps(null: false)
    end
  end
end
