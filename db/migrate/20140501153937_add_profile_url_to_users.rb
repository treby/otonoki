class AddProfileUrlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile_url, :string
    add_column :users, :external_url, :string
  end
end
