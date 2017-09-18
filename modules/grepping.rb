module Z3PO
  Z3PO.message(contains: /4chan/i) do |event|
		Z3PO.send_temporary_message(event.channel, "https://www.youtube.com/watch?v=GoRPVsN2SVM", 15)
  end

  Z3PO.message(contains: /music help/i) do |event|
		Z3PO.send_message(313009155969384448, "<@#{event.user.id}>, please allow me")
		Z3PO.send_message(313009155969384448, "!musichelp")
  end

  Z3PO.message(contains: /Currently, yuki_nyiaya is streaming/i) do |event|
    replace = event.message.content
    event.message.delete
    replace.sub!("yuki_nyiaya", "❄YUKI❄")
    Z3PO.send_message(event.channel, replace)
  end

  Z3PO.message(contains: /monica/i) do |event|
		Z3PO.send_message(event.channel, "https://i.imgur.com/ord2XEU.jpg")
  end
	
  Z3PO.message(contains: /sunscreen/i) do |event|
    Z3PO.send_message(event.channel, "SPF 100? I hope it's in stock, cause I rub it on my nips and the bell end of my cock!")
  end
	
  Z3PO.message(contains: /that's my fetish/i) do |event|
		num = Random.rand(2)
			if num == 1
				event.message.delete
				Z3PO.send_message(event.channel, "#{event.user.username} meant http://i.imgur.com/7PyvoJu.jpg")
			else
				event.message.delete
				Z3PO.send_message(event.channel, "#{event.user.username} meant http://i.imgur.com/VOBdI06.jpg")
			end
	end
end
