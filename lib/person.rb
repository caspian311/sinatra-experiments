
class Person
   @@people = []

   attr_reader :name
   attr_reader :id

   def initialize(options)
      @id = options[:id]
      @name = options[:name]
   end

   def self.find(id)
      @@people.select { |person| person.id == id }.first
   end

   def self.deleteAll
      @@people.clear
   end

   def self.all
      @@people
   end

   def save
      @@people << self
   end
end
