class AddUniquenessToLegacyMembers < ActiveRecord::Migration
  def change
  	add_index :legacy_members, :phone, :unique => true, :name => 'phone_index'
  end
end
