# frozen_string_literal: true

class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.text :address
      t.string :district
      t.string :province
      t.string :property_type
      t.integer :bedrooms
      t.decimal :bathrooms
      t.decimal :area
      t.string :apartment_ameneties, array: true, default: []
      t.string :building_ameneties, array: true, default: []
      t.string :close_by, array: true, default: []
      t.boolean :pets_allowed
      t.text :description
      t.boolean :is_available, null: false, default: true
      t.string :operation_type
      t.references :landlord, null: false, foreign_key: { to_table: 'users' }

      t.timestamps
    end
  end
end
