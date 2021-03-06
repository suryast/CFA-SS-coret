class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
       if user.has_role? :admin
          can :manage, :all
       elsif user.has_role? :buyer
          can :create, Artist
          can :update, Artist
          can :create, Creation
          can :update, Creation
          can :create, Product
          can :update, Product
          can :manage, ProductType
          can :update, Address
          can :read, Address
          can :read, OrderStatus
          can :read, OrderItem
          can :read, Order
          can :update, OrderItem
          can :update, Order
       elsif user.has_role? :customer
          can :manage, Address
          can :manage, OrderItem
          can :manage, Order
          can :read, Product
       else
          
       end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
