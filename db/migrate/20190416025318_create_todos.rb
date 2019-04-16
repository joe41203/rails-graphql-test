class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :task_name, null: false
      t.boolean :finished, null: false, default: false
      t.references :user, null: false, index: true
      t.timestamps
    end
    add_index :todos, :task_name
  end
end
