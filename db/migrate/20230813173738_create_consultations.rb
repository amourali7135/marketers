class CreateConsultations < ActiveRecord::Migration[7.0]
  def change
    create_table :consultations do |t|
      t.integer :cost
      t.string :time
      t.string :title
      t.text :description
      t.boolean :free
      t.boolean :completed
      t.string :service
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
