class AddEditorIdToDecisions < ActiveRecord::Migration[5.2]
  def change
    add_column :decisions, :editor_id, :integer
  end
end
