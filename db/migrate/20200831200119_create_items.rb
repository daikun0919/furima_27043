class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.string :item_price, null: false
      t.string :item_name, null: false
      t.string :genre_id, null: false
      t.string :status_id, null: false
      t.string :delivery_id, null: false
      t.string :area_id, null: false
      t.string :day_id, null: false
      t.string :item_explain, null: false
      t.timestamps
    end
  end
end
