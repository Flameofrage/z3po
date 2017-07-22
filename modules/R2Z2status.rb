module Z3PO
  Z3PO.presence(from: "R2Z2", status: :online) do |event|
        event.bot.channel(313009155969384448).send_message('There you are R2Z2, you shouldn\'t go running off like that.')
  end

  Z3PO.presence(from: "R2Z2", status: :offline) do |event|
        event.bot.channel(313009155969384448).send_message('R2Z2 where do you think you\'re going?! Well, I\'m not going that way.')
  end
end 
