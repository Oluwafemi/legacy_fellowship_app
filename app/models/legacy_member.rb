class LegacyMember < ActiveRecord::Base
  belongs_to :ats_level
  attr_accessible :first_name, :middle_name, :surname, :gender, :birthday, :home_address, :phone, :email, 
                  :work_detail, :work_address, :cih_address, :ats_level_id

  validates :first_name, :middle_name, :surname, :gender, :phone, :ats_level_id, :presence => true
  validates :first_name, :length => { :in => 1..30 }
  validates :middle_name, :length => { :in => 1..30 }
  validates :surname, :length => { :in => 1..30 }
  validates :gender, :format => { :with => /^male$|^female$/i, :message => "%{value} is not a valid gender" }
  validates :phone, :uniqueness => true
end
