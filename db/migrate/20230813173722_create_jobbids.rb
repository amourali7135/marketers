class CreateJobbids < ActiveRecord::Migration[7.0]
  def change
    create_table :jobbids do |t|
      t.string :price
      t.string :completion_time
      t.string :status
      t.references :job, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
