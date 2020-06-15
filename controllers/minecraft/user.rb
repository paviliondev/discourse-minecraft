class DiscourseMinecraft::UserController < ActionController::Base
  def authenticate
    params.require(:username)
    custom_field = UserCustomField.where(name: 'minecraft_username', value: params[:username])
    
    if custom_field.exists? &&
        (user = User.find_by(id: custom_field.pluck(:user_id))).present?
      
      render json: {
        user: {
          custom_groups: user.groups.as_json
        }
      }
    else
      raise Discourse::NotFound
    end
  end
end