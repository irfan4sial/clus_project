class Ability
  include CanCan::Ability

  def initialize(user)
    puts user.inspect
    unless user.nil?
      if user.is_ceo?
        ceo user
      elsif user.is_pm?
        puts u='user is pm'
        puts u='user is pm'
        project_manager user
      elsif user.is_developer?
        developer user
      else
        all_user user
      end
    else
      all_user user
    end
  end

  def ceo(user)
    can [:index, :create,:destroy, :update], Home
    #can :manage, Home
  end
  def project_manager(user)
    puts 'user'
    puts 'user'
    puts user.inspect
    can [:update], Home
    #can :manage, :all
  end
  def developer(user)
    #can :manage, :all
    can [:show], Home
  end

  def all_user(user)
    can [:manage], :all
  end
end
