module ApplicationHelper
  def lnil(date)
    date.nil? ? 'не указано' : l(date)
  end
  
  def rusnil(text, method = nil)
    text.blank? ? 'не указано' : (method.nil? ? text : text.send(method))
  end

  def rusdnil(text, method = nil)
    text.blank? ? '-' : (method.nil? ? text : text.send(method))
  end

  def rusenil(text, method = nil)
    text.blank? ? '' : (method.nil? ? text : text.send(method))
  end
  
  def ellipsisize(str, options={})
    length=options[:length] || 64
    str.gsub(/\A(.{#{length}})(.{4,})(.{#{length}})\z/, '\1...\3')
  end  
end
