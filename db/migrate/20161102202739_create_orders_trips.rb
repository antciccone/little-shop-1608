class CreateOrdersTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :orders_trips do |t|
      t.references :order, foreign_key: true
      t.references :trip, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
