class AddForeignKeyReferenceToLegacyMembers < ActiveRecord::Migration
  def change
  	change_table :legacy_members do |t|
  	  t.references :ats_level
  	  t.foreign_key :ats_levels
    end
  end
end
