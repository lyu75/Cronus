class ChangePDatatypeInScenes < ActiveRecord::Migration[5.2]
  def change
    change_column :scenes, :p1, :integer
    change_column :scenes, :p2, :integer
  end
end
