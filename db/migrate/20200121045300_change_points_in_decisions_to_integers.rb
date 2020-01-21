class ChangePointsInDecisionsToIntegers < ActiveRecord::Migration[5.2]
  def change
    change_column :decisions, :p1, :integer
    change_column :decisions, :p2, :integer
    change_column :decisions, :p3, :integer
    change_column :decisions, :p4, :integer
    change_column :decisions, :p5, :integer
    change_column :decisions, :p6, :integer
    change_column :decisions, :p7, :integer
    change_column :decisions, :p8, :integer
  end
end
