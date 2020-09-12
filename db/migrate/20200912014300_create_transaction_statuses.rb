class CreateTransactionStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :transaction_statuses do |t|
      t.string :transaction_status_id, null: false
      t.timestamps
    end
  end
end
