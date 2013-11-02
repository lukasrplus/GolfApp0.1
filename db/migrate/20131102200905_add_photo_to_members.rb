class AddPhotoToMembers < ActiveRecord::Migration
  def change
    add_column :members, :photo, :string
  end
end
