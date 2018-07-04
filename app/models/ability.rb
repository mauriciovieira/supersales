class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      if user.salesperson?
        can :access, :rails_admin
        can :read, :dashboard
        can :manage, User, id: user.id
        can :manage, Client, user_id: user.id
        can :read, Product, status: :active
        can :read, Discount, status: :active
        can :manage, SalesItem, user_id: user.id
        can :manage, Address, user_id: user.id
        can :manage, Sale, user_id: user.id
      elsif user.manager?
        can :manage, :all
      end
    end
  end
end
