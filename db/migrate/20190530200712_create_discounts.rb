class CreateDiscounts < ActiveRecord::Migration[5.2]
  def change
    create_table :discounts do |t|
      t.references :partner, foreign_key: true
      t.string :title
      t.string :description
      t.integer :number_to_be_used, default: 1
      t.float :price, default: 0
      t.float :percentage, default: 0
      t.boolean :status, status: true

      t.timestamps
    end
  end
end
