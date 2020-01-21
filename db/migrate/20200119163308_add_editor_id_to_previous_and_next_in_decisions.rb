class AddEditorIdToPreviousAndNextInDecisions < ActiveRecord::Migration[5.2]
  def change
    add_column :decisions, :previous_editor_id, :integer
    add_column :decisions, :next_editor_id, :integer
  end
end
