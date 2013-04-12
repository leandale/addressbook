class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :country
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
