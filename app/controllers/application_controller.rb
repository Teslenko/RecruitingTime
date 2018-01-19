class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  # def after_sign_in_path_for(resource)
  #   current_user
  # end

  def after_sign_in_path_for(resource)
    if current_user.has_attribute?(:admin)
      dashboard_path
    elsif current_user.has_attribute?(:users)
      root_path
    else
      root_path
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    request.referrer
  end

end
