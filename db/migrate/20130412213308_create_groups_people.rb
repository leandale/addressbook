class CreateGroupsPeople < ActiveRecord::Migration
  def change
    create_table :groups_people do |t|
      t.integer :group_id
      t.integer :person_id

      t.timestamps
    end
  end
end
