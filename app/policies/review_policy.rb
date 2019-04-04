class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    return true
  end

  def create?
    # record.user == user
    return true
  end

  def destroy?
    record.user == user
  end
end
