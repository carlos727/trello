class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :duration
      t.date :start_date
      t.date :finish_date
      t.integer :user_id
      t.boolean :finished
      t.integer "responsible_id"

      t.timestamps
    end
  end
end
