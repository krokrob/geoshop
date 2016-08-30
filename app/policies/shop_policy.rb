class ShopPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new?
    user_is_owner_or_admin?
  end

  def create?
    new?
  end

  def show
    user_is_owner_or_admin?
  end

  private

  def user_is_owner_or_admin?
    record.user == user || user.admin
  end
end
