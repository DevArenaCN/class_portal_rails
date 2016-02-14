class Ability
  include CanCan::Ability


  def initialize(admin)
     admin ||= Admin.new
     can :create, :all if admin.role == 'superadmin'
     can :read, :all if admin.role =='superadmin'
     can :update, :all if admin.role == 'superadmin'
     can :destroy, :all if admin.role =='superadmin'
     can :update, Admin, id: admin.id if admin.role =="admim"
     can :read, :all if admin.role =="admin"

  end
end
