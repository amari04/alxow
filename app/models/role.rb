class Role < ApplicationRecord
has_many :role_users
  validates :name, presence: true, uniqueness: true   
  validates :shortname, presence: true, uniqueness: true
  validates :englishname, presence: true, uniqueness: true

def self.create_main_roles
    r1 = Role.find_or_create_by(englishname: 'admin',      shortname: 'Админ', name: 'Администратор')
    r2 = Role.find_or_create_by(englishname: 'employee',    shortname: 'Сотр', name: 'Сотрудник')
    r3 = Role.find_or_create_by(englishname: 'student',    shortname: 'Студ', name: 'Студент')
    r4 = Role.find_or_create_by(englishname: 'operator', shortname: 'Опер', name: 'Оператор')
    r5 = Role.find_or_create_by(englishname: 'executive', shortname: 'Рук', name: 'Руководство')
    r6 = Role.find_or_create_by(englishname: 'guests', shortname: 'Гость', name: 'Гости')
    
    [r1, r2, r3, r4, r5, r6]
    
  end

  ROLE_FOR_METHODS = ['admin', 'employee', 'student', 'operator', 'executive', 'guests']
  
  ROLE_FOR_METHODS.each do |rname|
    define_method "is_#{rname}?" do
      self.role_name_eng == rname
    end
  end
end
