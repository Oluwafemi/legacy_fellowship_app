ActiveAdmin.register AtsLevel do
  
  controller do
    
    def action_methods
      if current_admin_user.superuser
        super
      end
    end

  end
  
  menu :if => proc{ current_admin_user.superuser }
end
