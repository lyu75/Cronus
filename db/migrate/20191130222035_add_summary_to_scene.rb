class AddSummaryToScene < ActiveRecord::Migration[5.2]
  def change
    add_column :scenes, :summary, :string
  end
end
