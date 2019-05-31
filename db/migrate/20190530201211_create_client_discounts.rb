class CreateClientDiscounts < ActiveRecord::Migration[5.2]
  def change
    create_table :client_discounts do |t|
      t.references :client, foreign_key: true
      t.references :discount, foreign_key: true

      t.timestamps
    end
  end
end
