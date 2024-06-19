module ApplicationHelper
    def on_auth_page?
        controller_name == 'sessions' && action_name == 'new' || 
        controller_name == 'registrations' && action_name == 'new'
      end
end