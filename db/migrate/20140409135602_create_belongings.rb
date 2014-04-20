class CreateBelongings < ActiveRecord::Migration
  def change
    create_table :belongings do |t|
      t.integer :user_id
      t.integer :group_id

      t.timestamps
    end
  end
end
