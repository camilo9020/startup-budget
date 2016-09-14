class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.text :concept
      t.integer :amount
      t.integer :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
