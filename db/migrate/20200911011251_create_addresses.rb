class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.references :user, foreign_key: true
      t.string :item_price, null: false
      t.string :postal_code, null: false
      t.string :area_id, null: false
      t.string :municipality, null: false
      t.string :block_number, null: false
      t.string :apartment_name
      t.string :phone_number, null: false
    
      t.timestamps
    end
  end
end
