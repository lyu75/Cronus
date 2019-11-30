class CreateDecisions < ActiveRecord::Migration[5.2]
  def change
    create_table :decisions do |t|
      t.string :description

      t.timestamps
    end
  end
end
