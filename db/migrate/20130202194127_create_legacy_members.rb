class CreateLegacyMembers < ActiveRecord::Migration
  def change
    create_table :legacy_members do |t|
      t.string :surname
      t.string :first_name
      t.string :middle_name
      t.string :gender
      t.date :birthday
      t.string :home_address
      t.string :phone
      t.string :email
      t.string :work_detail
      t.string :work_address
      t.string :cih_address
       
      t.timestamps
    end

    add_index :legacy_members, [:surname, :first_name, :middle_name], :unique => true, :name => 'names'
  end
end
