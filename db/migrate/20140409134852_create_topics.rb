class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :display_name
      t.string :description
      t.integer :owner_id
      t.integer :group_id

      t.timestamps
    end
  end
end
