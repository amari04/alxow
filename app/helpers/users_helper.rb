module UsersHelper
   def user_options
    User.pluck("email, id") 
   end
end
