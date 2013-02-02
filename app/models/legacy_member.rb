class LegacyMember < ActiveRecord::Base
  attr_accessible :first_name, :middle_name, :surname, :gender, :birthday, :home_address, :phone, :email, :work_detail, :work_address, :cih_address

  validates :first_name, :middle_name, :surname, :gender, :phone, :presence => true
  validates :first_name, :length => { :in => 1..30 }
  validates :middle_name, :length => { :in => 1..30 }
  validates :surname, :length => { :in => 1..30 }
  validates :gender, :inclusion => { :in => %w(male female MALE FEMALE), :message => "%{value} is not a valid gender" }
end
