module SideBarHelper
  def side_bar_items(ru)
    result = []
    if ru.nil?
      result << {:name => 'Корпусы',
        :controller => :buildings, :action => :index,
        :icon => 'building'}
      else
   if ru.is_admin?
      result << {
       :name => 'Администрирование',
       :icon => 'key',
       :children => [
       {:name => 'Пользователи',
        :controller => :users, :action => :index,
        :icon => 'file-text-o',
        :class => 'long'},
       {:name => 'Добавление',
        :controller => :users, :action => :new,
        :icon => 'user-plus'},
       {:name => 'Информация о людях', :controller => :people,
       :action => :index,  :icon => 'file-text-o',
        :class => 'long' },
       {:name => 'Добавление', :controller => :people,
        :action => :new, :icon => 'plus'},
       {:name => 'Роли', :controller => :roles,
        :action => :index,  :icon => 'file-text-o'},
       {:name => 'Добавить роль', :controller => :roles,
        :action => :new, :icon => 'plus'}
     ]}
   else
     if ru.is_operator?
    result << {
      :name => 'Проживающие',
      :icon => 'users', :class => 'long',
      :children => [
      {:name => 'Заселить',
       :icon => 'plus',
       :controller => :students, :action => :new,},
      {:name => 'Сотрудники', :icon => 'briefcase', :controller => :workers, :action => :index,},
      {:name => 'Студенты', :icon => 'archive', :controller => :students, :action => :index,},
       ]}
    result << {
      :name => 'Оплата',
      :icon => 'credit-card',
      :children => [
      {:name => 'Информация об оплате',
       :icon => 'info-circle',
       :controller => :payments, :action => :index,},
      {:name => 'Добавить',
       :icon => 'plus',
       :controller => :payments, :action => :new,}
      ]}
      result << {
     :name => 'Жилой фонд',
     :icon => 'info',
     :children => [
      {:name => 'Корпусы',
      :controller => :buildings, :action => :index,
      :icon => 'building'},
     {:name => 'Сотрудники',
     :icon => 'male',
      :controller => :employees, :action => :index
      },
     {:name => 'Комнаты',
      :controller => :rooms, :action => :index,
      :icon => 'bed'}
   ]}
   result << {
     :name => 'Обеспечeние',
     :icon => 'database',
     :children => [
     {:name => 'Инвентарь', :icon => 'cubes',
     :controller => 'inventaries',
     :action => 'index'},
     {:name => 'Постельное белье', :icon => 'columns', :class => 'long',
     :controller => 'beddings',
     :action => 'index'}
   ]}
 else
   if ru.is_stud?
     result << {
       :name => 'Проживающие',
       :icon => 'users', :class => 'long',
       :children => [{:name => 'Студенты',
        :icon => 'archive',
        :controller => :students, :action => :index,},
        ]}
    result << {
       :name => 'Жилой фонд',
       :icon => 'info',
       :children => [{:name => 'Корпусы',
        :controller => :buildings, :action => :index,
        :icon => 'building'},
        {:name => 'Комнаты',
        :controller => :rooms, :action => :index,
        :icon => 'bed'}
        ]}
    result << {
      :name => 'Заявки',
      :icon => 'book',
      :children => [{:name => 'Создать заявку',
       :icon => 'plus',
       :controller => :requests, :action => :new,},
       {:name => 'Все заявки',
       :icon => 'laptop',
       :controller => :requests, :action => :index,}
       ]}
       result << {
         :name => 'Оплата',
         :icon => 'credit-card',
         :children => [{:name => 'Информация об оплате',
          :icon => 'info-circle',
          :controller => :payments, :action => :index,}
        ]}
     end
   end
 end
end

  result
end
  def is_open?(ctr, act)
    case ctr.to_s
    when 'users'
      ctr.to_s == controller_name.to_s
    else
      false
    end
  end
end
