require 'pry'

class Actor < ActiveRecord::Base
  # association macro
  has_many :characters
  has_many :shows, through: :characters


  def full_name
    "#{self.first_name} #{last_name}"
  end

  # @return [Array] of character names and show names
  def list_roles
    self.characters.map do |c|
      "#{c.name} - #{c.show.name}"  
    end 
  end

end