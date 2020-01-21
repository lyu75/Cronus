class DeleteEditorIdFromDecisions < ActiveRecord::Migration[5.2]
  def change
    remove_column :decisions, :editor_id
  end
end
