class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.boolean :accepted
      t.boolean :completed
      t.integer :backlog
      t.string :completion_time
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
