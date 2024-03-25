class MatchPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end

    def index?
      record.user == user
    end

    def create?
      record.user == user
    end

    def show?
      record.user == user
    end

    def destroy?
      record.user == user
    end
  end
end
