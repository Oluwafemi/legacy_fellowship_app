class AddForeignKeyToLegacyMembers < ActiveRecord::Migration
  def change
  	change_table :legacy_members do |t|
      t.remove :ats_levels_id
    end
  end
end
