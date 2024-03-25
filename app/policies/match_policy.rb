class MatchPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      my_profile = user.profile
      scope.where(first_profile: my_profile) + scope.where(second_profile: my_profile)
    end
  end

  def create?
    true
  end

  def show?
    my_profile = user.profile
    record.first_profile == my_profile || record.second_profile == my_profile
  end

  def destroy?
    my_profile = user.profile
    record.first_profile == my_profile || record.second_profile == my_profile
  end
end
