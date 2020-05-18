class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.integer :order
      t.integer :status

      t.timestamps
    end
  end
end
