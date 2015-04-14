require 'person'

describe Person, '#find' do
   it 'should return a person with the given id' do
      person = Person.find 123
      expect(person.name).to eq 'Matt'
   end
end
