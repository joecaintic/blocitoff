class ItemPolicy < ApplicationPolicy

  def create?
    user.present?
  end

  def new?
    create?
  end

  #def destroy?
  #user.present? && (record.user == user || user.admin? || user.moderator?)
  #end

end