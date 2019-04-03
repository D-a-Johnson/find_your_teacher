class AppointmentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def edit?
    record.lesson.user == user
  end

  def update?
    record.lesson.user == user
  end

  def destroy?
    record.user == user
  end
end
