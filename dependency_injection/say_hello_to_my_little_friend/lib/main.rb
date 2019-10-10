class EmailClient
  def message(message)
    new_message = message
    new_message
  end
end

class Message
  def send(to, body)
    # Imagine I'm sending an email
    true
  end
end

class SayHelloToMyLittleFriend
  def run(email, new_message)
    email.message(new_message).send("friend@example.com","HELLO!")
  end
end
