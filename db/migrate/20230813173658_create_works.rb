class CreateWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :works do |t|
      t.string :title
      t.text :description
      t.string :year
      t.datetime :completed
      t.references :portfolio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
