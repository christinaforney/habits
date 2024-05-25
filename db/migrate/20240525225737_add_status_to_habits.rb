class AddStatusToHabits < ActiveRecord::Migration[7.1]
  def change
    add_column :habits, :status, :string
  end
end
