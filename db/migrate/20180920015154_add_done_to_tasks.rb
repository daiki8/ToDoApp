class AddDoneToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :done, :boolean, default: false
    add_column :tasks, :done_at, :datetime
  end
end
