class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :country
      t.string :region
      t.integer :PAR
      t.integer :lenght
    end
  end
end
