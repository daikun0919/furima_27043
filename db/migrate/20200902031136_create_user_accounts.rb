class CreateUserAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_accounts do |t|
      t.string :card_name, null: false
      t.string :expiration_date, null: false
      t.timestamps
    end
  end
end
