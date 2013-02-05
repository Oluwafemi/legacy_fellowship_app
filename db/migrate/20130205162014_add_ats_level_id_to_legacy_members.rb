class AddAtsLevelIdToLegacyMembers < ActiveRecord::Migration
  def change
  	change_table :legacy_members do |t|
  	  t.references :ats_levels
    end
  end
end

