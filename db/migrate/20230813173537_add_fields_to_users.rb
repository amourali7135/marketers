class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :user_name, :string
    add_column :users, :service_provider, :boolean
    add_column :users, :years_of_experience, :integer
    add_column :users, :biography, :text
    add_column :users, :education, :text
    add_column :users, :rating, :integer
    add_column :users, :location, :string
    add_column :users, :language, :string
    add_column :users, :credentials, :text
    add_column :users, :age, :integer
  end
end
