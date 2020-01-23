class ReferencesFixes < ActiveRecord::Migration[5.2]
  def change
    remove_column :scenes, :project_id
    remove_column :decisions, :scene_id

    # add the new foreign_key
    add_reference :scenes, :project, foreign_key: :true
    add_reference :decisions, :scene, foreign_key: :true
  end
end
