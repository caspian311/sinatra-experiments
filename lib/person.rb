
class Person
   attr_reader :name

   def initialize(name)
      @name = name
   end

   def self.find(id)
      Person.new 'Matt'
   end
end
