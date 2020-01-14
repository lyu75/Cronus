class DeleteUserRefFromScenes < ActiveRecord::Migration[5.2]
  def change
    remove_reference :scenes, :user, index: true, foreign_key: true
  end
end
