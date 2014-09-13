class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :start_date
      t.string :end_date
      t.string :start_time
      t.string :end_time
      t.text :description
      t.boolean :all_day
      t.boolean :repeating
      t.integer :repeating_id
      t.string :url
      t.string :type

      t.timestamps
    end
  end
end
