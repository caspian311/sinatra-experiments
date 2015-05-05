require 'person'
require 'json'

describe Person do 
   describe '#find' do
      before do
         Person.deleteAll
      end

      after do
         Person.deleteAll
      end

      it 'should return nil if there is no person by that id' do
         person = Person.find 123

         expect(person).to be nil
      end

      it 'should return a person with the given id' do
         Person.new(:id => 123, :name => 'Matt').save

         person = Person.find 123

         expect(person.id).to eq 123
         expect(person.name).to eq 'Matt'
      end

      it 'should return a different person with another id' do
         Person.new(:id => 456, :name => 'Caleb').save

         person = Person.find 456

         expect(person.id).to eq 456
         expect(person.name).to eq 'Caleb'
      end
   end

   describe '#all' do
      before do
         Person.deleteAll
      end

      after do
         Person.deleteAll
      end

      it 'should return all people' do
         Person.new(:id => 456, :name => 'Caleb').save
         Person.new(:id => 456, :name => 'Caleb').save

         count = Person.all.count

         expect(count).to eq 2
      end
   end

   describe '#to_json' do
      it 'should return back valid json' do
         json = Person.new(:id => 123, :name => 'Matt').to_json.gsub /\s/, ''

         expected_json = '{ "id": 123, "name": "Matt" }'.gsub /\s/, ''
         expect(json).to eq expected_json
      end
   end
end
