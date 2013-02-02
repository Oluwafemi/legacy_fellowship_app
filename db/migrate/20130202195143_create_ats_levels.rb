class CreateAtsLevels < ActiveRecord::Migration
  def change
    create_table :ats_levels do |t|
      t.string :name

      t.timestamps
    end

    add_index :ats_levels, :name, :unique => true, :name => 'ats'
  end
end
