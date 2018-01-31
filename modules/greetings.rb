#Test Event
Z3PO.message(with_text: ["Hey z3po!","Hey 3po!"]) do |event|
      event.respond "Hello #{event.user.name}, how're you?"
end

 Z3PO.member_join do |event|
      event.bot.channel(408353405933977610).send_message("Greetings <@#{event.user.id}>! I am Z3po, human cyborg relations. Welcome! This is R2Z2, he can do a number of functions which you can instruct him to do with !help. Please allow me to demonstrate for you.")
      Z3PO.send_message(408353405933977610, "!help")
end 
