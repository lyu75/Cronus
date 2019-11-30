class AddPrevAndNextToDecision < ActiveRecord::Migration[5.2]
  def change
    change_table (:decisions) do |t|
      t.references :previous, foreign_key: {to_table: 'scenes'}
      t.references :next, foreign_key: {to_table: 'scenes'}
    end
  end
end
