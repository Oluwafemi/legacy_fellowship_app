ActiveAdmin.register LegacyMember do
  config.per_page = 30

  #sidebar :help do
  #  "Maintained by contextfree@gmail.com"
  #end

  index do
  	column :surname
  	column :first_name
  	column :middle_name
  	column :phone
  	column :email

  	default_actions  
  end

  filter :surname
  filter :first_name
  filter :middle_name
  filter :gender
  filter :birthday

  # f.input :gender,  :as => :select, :collection => Gender::GENDERS

end

