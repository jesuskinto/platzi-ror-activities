# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Activity, owner_id: user.id
    can :read,   Activity, participating_users: { user_id: user.id }
  end
end
