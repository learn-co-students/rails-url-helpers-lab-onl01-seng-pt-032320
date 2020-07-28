class Student < ActiveRecord::Base
  
  def to_s  
    self.first_name + " " + self.last_name
  end

  def active_status
    case self.active
    when true
      "active"
    when false
      "inactive"
    end
  end 
end