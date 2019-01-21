class CreateTrackers < ActiveRecord::Migration[5.2]
  def change
    create_table :trackers do |t|
      t.integer :order_id
      t.json :event, default: {}
      t.json :package, default: {}

      t.timestamps
    end
  end
end
