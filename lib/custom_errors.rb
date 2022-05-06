class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    if person.is_a?(Person)
    self.partner = person
    person.partner = self
    else 
      raise PartnerError
    end
  end

  class PartnerError < StandardError
  end
end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




