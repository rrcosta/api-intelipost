class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.json :data, default: {}
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
