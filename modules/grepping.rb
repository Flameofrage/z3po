module Z3PO
  Z3PO.message(with_text: "4chan") do |event|
        Z3PO.send_temporary_message(event.channel, "https://www.youtube.com/watch?v=GoRPVsN2SVM", 15)
  end

  Z3PO.message(with_text: "music help") do |event|
        Z3PO.send_message(313009155969384448, "<@#{event.user.id}>, please allow me")
        Z3PO.send_message(313009155969384448, "!musichelp")
  end

	Z3P0.message(with_text: "that's my fetish") do |event|
		num = Random.rand(2)
			if num == 1
				Z3P0.send_message(event.channel, "<@#{event.user.id}: http://i.imgur.com/7PyvoJu.jpg")
			else
				Z3P0.send_message(event.channel, "<@#{event.user.id}: http://i.imgur.com/VOBdI06.jpg")
			end
	end
end
