require 'discordrb'
require 'yaml'
module Z3PO
  # Bot Config file
  CONFIG = YAML.load_file('data/config.yaml')

  # Bot Config
  Z3PO = Discordrb::Bot.new(token: CONFIG['token'],
			  client_id: CONFIG['client_id'],
			  ignore_bots: true)

  #Z3po Modules
  Dir['modules/*.rb'].each { |mod| require_relative mod; puts "Loaded: #{mod}" }

  #Aysnc
  Z3PO.run :async

#  Z3PO.send_temporary_message(289603265677492245, 'How do you do, I am Z3PO, Human Cyborg Relations. How might I serve you?', 10)
  Z3PO.sync
end
