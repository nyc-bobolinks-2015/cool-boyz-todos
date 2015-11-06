class CreateTags < ActiveRecord::Migration
  def change
  	create_table :tags do |t|
  		# t.has_many
  		t.string :name, {null: false, limit: 20}

  		t.timestamps
  	end
  end
end
