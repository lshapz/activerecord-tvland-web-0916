class Actor < ActiveRecord::Base
  
  has_many :characters
  has_many :shows, through: :characters

def full_name
  "#{self.first_name} #{self.last_name}"
end 

def list_roles
  y = ""
  self.characters.each {|x| y <<"#{x.name} - #{x.show.name}"}
  y
end 

#def 

end