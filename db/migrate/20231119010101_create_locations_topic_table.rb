# frozen_string_literal: true

class CreateLocationsTopicTable < ActiveRecord::Migration[7.0]
  def change
    create_table :locations_topic do |t|
      t.references :topic, foreign_key: true #null: false, index: { unique: true }, 
      t.float :latitude, null: false
      t.float :longitude, null: false
      t.string :name, null: true
      t.string :address, null: true
      t.string :street, null: true
      t.string :district, null: true
      t.string :city, null: true
      t.string :state, null: true
      t.string :postalcode, null: true
      t.string :country, null: true
      t.string :countrycode, null: true
      t.string :international_code, null: true
      t.string :locationtype, null: true
      t.integer :boundingbox, array: true, null: true
      t.timestamps
    end
  end
end
