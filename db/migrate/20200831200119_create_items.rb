class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :item_image, null: false
      t.string :item_name, null: false
      t.string :item_explain, null: false
      t.string :item_price, null: false
      t.timestamps
    end
  end
end
