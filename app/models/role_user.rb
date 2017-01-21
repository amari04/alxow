class RoleUser < ApplicationRecord
  belongs_to :role
  belongs_to :user
  
  validates :role_id, presence: true
  validates :user_id, presence: true
  
  def is_admin?
    if self.role.name == 'Администратор'
      return true
    else
      false
    end    
  end
  def is_staff?
    if self.role.name == 'Сотрудник'
      return true
    else
      false
    end  
  end
end
