class Role < ApplicationRecord
has_many :role_users
  validates :name, presence: true, uniqueness: true   
  validates :shortname, presence: true, uniqueness: true
  validates :englishname, presence: true, uniqueness: true

def self.create_main_roles
    r1 = Role.find_or_create_by(englishname: 'admin', 
      shortname: 'Админ',
      name: 'Администратор')
    r2 = Role.find_or_create_by(englishname: 'employee', 
      shortname: 'Сотр',
      name: 'Сотрудник')
    [r1, r2]
  end

  ROLE_FOR_METHODS = ['admin', 'employee']
  
  ROLE_FOR_METHODS.each do |rname|
    define_method "is_#{rname}?" do
      self.role_name_eng == rname
    end
  end
end
