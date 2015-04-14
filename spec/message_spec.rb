require 'message'

describe Message, '#greeting' do
   it 'should send the greeting' do
      message = Message.greeting
      expect(message).to eq 'Hello world!'
   end
end
