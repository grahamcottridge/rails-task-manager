class CreateToDos < ActiveRecord::Migration[5.1]
  def change
    create_table :to_dos do |t|
      t.string :task
      t.integer :priority

      t.timestamps
    end
  end
end
