lyrics = Array[
  "My vag like a operatic ballad, yo vag like grandpa's cabbage",
  "My vag effortless, yo vag post ads on craig's list",
  "My vag squirt aloe vera, yo vag look like tony danza",
  "My vag like tasting heaven, yo vag manages a 7-11",
  "My vag make ya girl panties creme, yo vag spreads hepatitis c",
  "My vag a chrome range rover, yo vag hatchback, '81 toyota",
  "My vag harvard law school, yo vag apex technical",
  "My vag speak five different languages, and told yo vag bitch make me a sandwich",
  "My vag feel like winning the lottery, yo shit got turned down from eHarmony",
  "My vag won best vag, yo vag won best supporting vag",
  "My vag got built-in utilities, yo fat ass is on disability",
  "My vag a Beyonce weave, yo vag a polyester kmart hairpiece",
  "My vag bounce like j-lo's booty, yo vag like James Lipton's booty",
  "My vag it's ornamental, yo vag is a 5 hour PBS special",
  "My vag feed the homeless, yo vag date the homeless",
  "My vag made the dean's list, yo vag couldn't pass a hiv test",
  "My vag is godfather 1, yo vag is godfather 3",
  "My vag got a big ass gun, yo vag is like pineapple cottage cheese",
  "My vag got 12 inch gold wheels, yo vag got bird poop on the windshield",
  "My vag beats yo vag by a million, yo vag is frightening like Serena Williams",
  "My vag parts the seas, yo vag farts and queefs"
]


Z3PO.message(contains: /^(vag|vagina|pussy|cunt|vajayjay)$/i) do |event|
  Z3PO.send_message(event.channel, "<@#{event.user.id}>, #{lyrics.sample}")
end
