class ChangePreviousToSceneInDeicisions < ActiveRecord::Migration[5.2]
  def change
    remove_column :decisions, :previous_id
    add_reference :decisions, :scene, index: true, foreign_key: true
  end
end
