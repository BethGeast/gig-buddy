class ProfilePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def create?
      true
    end

    def update?
      record.user == user
    end

    def destroy?
      record.user == user
    end

    def show
      record.user == user
    end

    def resolve
      user.admin? ? scope.all : scope.where(user: user)
    end
  end
end
