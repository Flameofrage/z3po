module Z3PO
  Z3PO.message(with_text: "4chan") do |event|
        Z3PO.send_temporary_message(event.channel, "https://www.youtube.com/watch?v=GoRPVsN2SVM", 15)
  end

  Z3PO.message(with_text: "music help") do |event|
        Z3PO.send_message(313009155969384448, "<@#{event.user.id}>, please allow me")
        Z3PO.send_message(313009155969384448, "!musichelp")
  end
end
