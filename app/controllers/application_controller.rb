class ApplicationController < ActionController::Base
  
  layout :layout_by_resource
  before_action if: :devise_controller?
  
  protected
  
  def layout_by_resource
    case namespace_name
    when 'devise'
      'devise/layouts/application'
    else
      'layouts/application'
    end
  end
  
  def after_sign_in_path_for(*)
    admins_root_path
  end
  
  def after_sign_out_path_for(*)
    new_admin_session_path
  end
  
  def namespace_name
    path = controller_path.split('/')
    path.second ? path.first : nil
  end
end