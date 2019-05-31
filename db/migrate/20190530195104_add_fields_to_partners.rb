class AddFieldsToPartners < ActiveRecord::Migration[5.2]
  def change
    add_column :partners, :name, :string
    add_column :partners, :address, :string
    add_column :partners, :phone, :string
    add_column :partners, :whatsapp, :string
    add_column :partners, :responsible, :string
  end
end
