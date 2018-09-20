class RenameDoneColumnToTasks < ActiveRecord::Migration[5.1]
  def change
    rename_column :tasks, :done, :activated
    rename_column :tasks, :done_at, :activated_at
  end
end
