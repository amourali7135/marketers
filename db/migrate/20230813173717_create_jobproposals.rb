class CreateJobproposals < ActiveRecord::Migration[7.0]
  def change
    create_table :jobproposals do |t|
      t.string :title
      t.integer :price
      t.text :description
      t.string :completion_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
