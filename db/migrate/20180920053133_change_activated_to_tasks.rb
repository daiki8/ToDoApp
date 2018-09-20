class ChangeActivatedToTasks < ActiveRecord::Migration[5.1]
  def change
    change_column_default :tasks, :activated, true
  end
end
