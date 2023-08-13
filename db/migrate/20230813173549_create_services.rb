class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :title
      t.text :description
      t.integer :cost
      t.integer :rating
      t.string :completion_time_estimate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
