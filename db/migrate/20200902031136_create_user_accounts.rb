class CreateUserAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_accounts do |t|
      t.references :user, foreign_key: true
      t.string :card_number, null: false
      t.string :card_period, null: false
      t.string :security_code, null: false
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
