class CreateUserGroups < ActiveRecord::Migration
  def change
    create_table :user_groups do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
    
    add_column :users, :group_id, :integer
  end
end
