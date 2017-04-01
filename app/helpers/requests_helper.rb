module RequestsHelper
    def request_options
    ["----", "Ремонт", "Заказ мебели", "Заказ постельного белья", "Приглашение посетителя", "др."]
  end
  def per_options
    Person.pluck("last_name||' '||first_name||' '||second_name, id") 
  end
  def status_options
    ["----", "Срочно"]
  end
end
