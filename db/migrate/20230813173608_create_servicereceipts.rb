class CreateServicereceipts < ActiveRecord::Migration[7.0]
  def change
    create_table :servicereceipts do |t|
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
