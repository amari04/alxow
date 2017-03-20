module StudentsHelper
  def student_options
    Person.pluck("last_name||' '||first_name||' '||second_name, id") 
   end
end
