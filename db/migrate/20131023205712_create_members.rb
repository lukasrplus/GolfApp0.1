class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :firstname
      t.string :secondname
      t.integer :HCP
      t.string :club
      t.string :brand

      t.timestamps
    end
  end
end
