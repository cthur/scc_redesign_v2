class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :division

      t.timestamps
    end
  end
end
