class UserPolicy < ApplicationPolicy
  def show?
    # currently set as true, but it should be changed that each user should only see their own page.
    record == user
  end
end
