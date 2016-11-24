module SideBarHelper
  def side_bar_items(ru)
    result = []
    result << {
      :name => 'Личный кабинет',
      :icon => 'users',
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
      :name => 'Заявки',
      :icon => 'book',
      :children => [
      {:name => 'Создать заявку',
       :icon => 'plus',
       :controller => :requests, :action => :new,},
      {:name => 'Все заявки',
       :icon => 'archive', 
       :controller => :requests, :action => :index,}
       ]}
        result << {
      :name => 'Студенты',
      :icon => 'wheelchair-alt', :class => 'long',
      :children => [
      {:name => 'Добавить',
       :icon => 'plus',
       :controller => :students, :action => :new,},
      {:name => 'Все студенты',
       :icon => 'archive', 
       :controller => :students, :action => :index,}
       ]}
       result << {
      :name => 'Информация',
      :icon => 'info',
      :children => [
      {:name => 'Сотрудники',
      :icon => 'male',
       :controller => :employees, :action => :index
       },
      {:name => 'Корпусы',
       :controller => :buildings, :action => :index,
       :icon => 'building'}, 
      {:name => 'Комнаты',
       :controller => :rooms, :action => :index,
       :icon => 'bed'}      
    ]} 
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
