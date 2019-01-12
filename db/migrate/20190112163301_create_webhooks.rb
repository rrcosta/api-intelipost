class CreateWebhooks < ActiveRecord::Migration[5.2]
  def change
    create_table :webhooks do |t|
      t.string :name
      t.string :url
      t.boolean :status

      t.timestamps
    end
  end
end
