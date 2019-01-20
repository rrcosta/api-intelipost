class CreateSalesPlatforms < ActiveRecord::Migration[5.2]
  def change
    create_table :sales_platforms do |t|
      t.integer :orderId
      t.string :status, default: 0
      t.datetime :date
      t.boolean :status_delivered, default: false

      t.timestamps
    end
  end
end
