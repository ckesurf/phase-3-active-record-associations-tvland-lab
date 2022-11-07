require 'pry'

class Character < ActiveRecord::Base
  # c.actor
  belongs_to :actor
  belongs_to :show
  # Batman: The Dark Knight -> Christian Bale
  # Tyrion Lannister -> Peter Dinkelage
  # Captain America -> Chris Evans

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

end