class AddReferenceFromDecisionToProject < ActiveRecord::Migration[5.2]
  def change
    add_reference :decisions, :project, index: true, foreign_key: true
  end
end
