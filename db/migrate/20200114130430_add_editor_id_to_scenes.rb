class AddEditorIdToScenes < ActiveRecord::Migration[5.2]
  def change
    add_column :scenes, :editor_id, :integer
  end
end
