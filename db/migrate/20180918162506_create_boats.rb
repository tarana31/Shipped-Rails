class CreateBoats < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|
      t.string :name
      t.integer :max_containers
      t.string :location
      t.text :description
      t.string :contact

      t.timestamps
    end
  end
end
