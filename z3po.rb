require 'discordrb'
require 'yaml'
include FileUtils::Verbose
# Bot Config file
CONFIG = YAML.load_file('data/config.yaml')

# Bot Config
Z3PO = Discordrb::Bot.new(token: CONFIG['token'],
			                    client_id: CONFIG['client_id'],
			                    ignore_bots: false)

#Z3po Modules
Dir['modules/*.rb'].each { |mod| require_relative mod; puts "Loaded: #{mod}" }

#Aysnc
Z3PO.run :async

Z3PO.sync
