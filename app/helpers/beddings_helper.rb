module BeddingsHelper
  def people_options
    Person.pluck("last_name||' '||first_name||' '||second_name, id") 
  end
end
