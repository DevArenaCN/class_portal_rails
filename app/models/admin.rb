class Admin < ActiveRecord::Base
  # def user_params
  #   params.require(:admin).permit(:username, :email, :password, :role)
  # end
  #
  # Roles = [ :superadmin, :default]

  def is? (requested_role)
    self.role == requested_role.to_s
  end
end
