class CreateActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      t.integer :repetitions
      t.text :note
      t.references :habit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
