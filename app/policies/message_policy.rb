class MessagePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def create?
    match = record.match
    my_profile = user.profile
    match.first_profile == my_profile || match.second_profile == my_profile
  end
end
