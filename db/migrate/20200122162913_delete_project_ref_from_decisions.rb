class DeleteProjectRefFromDecisions < ActiveRecord::Migration[5.2]
  def change
    remove_column :decisions, :project_id
  end
end
