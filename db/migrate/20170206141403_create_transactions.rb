class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.string :trx_id
      t.string :address_ship
      t.date :date_order
      t.string :seller_name
      t.string :delivery_service

      t.timestamps
    end
  end
end
