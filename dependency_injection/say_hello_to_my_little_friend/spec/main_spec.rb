require 'main'

describe Message do

  it 'can send a message' do
    expect(subject.send("friend@example.com", "HELLO!")).to eq(true)
  end

end

describe EmailClient do
  it 'can set up a message' do
    new_message = Message.new
    expect(subject.message(new_message)).to eq(new_message)
  end
end

describe SayHelloToMyLittleFriend do

  it 'can send a message' do
    email = EmailClient.new
    new_message = Message.new
    expect(subject.run(email, new_message)).to eq(true)
  end
end
