if (u1 = User.find_by_email('admin@localhost')).nil?
  u1 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'admin@localhost')
  u1.activate!
end
if (u2 = User.find_by_email('user@localhost')).nil?
  u2 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'user@localhost')
  u2.activate!
end
if (User.find_by_email('user1@localhost')).nil?
   w00 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'user1@localhost')
   w0 = Person.create!(last_name: "Petrov", first_name: "Petr", birthday: Date.new(1992,12,10), sex: "мужчина", series: "4444", number: "111111", organization: "UVAO", pass_date: Date.new(2012,12,10), address: "Moscow", user_id: w00.id)
  w1 = Student.create!(medical_certificate: true, person_id: w0.id)
  w00.activate!
 end
r1, r2, r3 = Role.create_main_roles
ru1 = RoleUser.create(role: r1, user: u1)
ru2 = RoleUser.create(role: r2, user: u2)
ru3 = RoleUser.create(role: r3, user: w00)
