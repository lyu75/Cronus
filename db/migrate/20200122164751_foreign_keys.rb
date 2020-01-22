class ForeignKeys < ActiveRecord::Migration[5.2]
  def change
    # remove the old foreign_key
    remove_column :scenes, :project_id
    remove_column :decisions, :scene_id

    # add the new foreign_key
    add_reference :scenes, :project, on_delete: :cascade, foreign_key: :true, index: true
    add_reference :decisions, :scene, on_delete: :cascade, foreign_key: :true, index: true
  end
end
