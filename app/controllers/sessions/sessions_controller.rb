class Sessions::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end
#def findprofile(currentuser)
 # @profiles = Profile.all
  #@users= User.all
  #@profile = Profile.find_by_user_id(currentuser)
  #return profile
#end
  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end
  def after_sign_in_path_for(resource)
    if user_signed_in?
           userprofile_path(current_user.id)
        else if hoteladmin_signed_in?
           hotelprofile_path
        else if fligthadmin_signed_in?
           airlineprofile_path
          else
            adminpage_path
          end 
        end 
       end
    end
  
 def after_sign_out_path_for(resource)
  home_path
end
  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
