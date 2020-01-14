class AddPoints < ActiveRecord::Migration[5.2]
  def change
    add_column :scenes, :p1, :float
    add_column :scenes, :p2, :float

    add_column :decisions, :p1, :float
    add_column :decisions, :p2, :float
    add_column :decisions, :p3, :float
    add_column :decisions, :p4, :float
    add_column :decisions, :p5, :float
    add_column :decisions, :p6, :float
    add_column :decisions, :p7, :float
    add_column :decisions, :p8, :float
  end
end
