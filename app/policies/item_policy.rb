class ItemPolicy < ApplicationPolicy

  def create?
    user.present?
  end

  def new?
    create?
  end



end