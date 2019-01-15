class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.json :data

      t.timestamps
    end
  end
end
