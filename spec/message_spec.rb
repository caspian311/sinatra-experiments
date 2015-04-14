require 'message'

describe Message, '#greeting' do
   it 'should send the greeting' do
      message = Message.new
      expect(message.greeting).to eq 'Hello world!'
   end
end
