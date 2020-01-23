class DeleteNextIdFromDecisions < ActiveRecord::Migration[5.2]
  def change
    remove_column :decisions, :next_id
  end
end
