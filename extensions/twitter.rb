#!/usr/bin/ruby
#module Z3PO
#  module Twitter
require 'json'
require 'excon'
require 'fileutils'
class Z3p0Twitter
	def initialize(username)
			@username = username
			@id = 0
	end

	def IDLookUp
   	light = Excon.get('https://api.twitch.tv/kraken/users',
			:headers => {'Client-ID' => 'mglfxs09bl7fgw3zfm3ppa73e7qbjy', 'Accept' => 'application/vnd.twitchtv.v5+json'},
			:query => {:login => @username},
			:method => 'GET')
		name = JSON.parse(light.body)
		@id = name["users"][0]["_id"].to_i
	end

	def StreamStatus
		dark = Excon.get('https://api.twitch.tv/kraken/streams/' + @id.to_s,
			:headers => {'Client-ID' =>  'mglfxs09bl7fgw3zfm3ppa73e7qbjy', 'Accept' => 'application/vnd.twitchtv.v5+json'},
			:method => 'GET')
		status = JSON.parse(dark.body)
#		p dark.body		
#		if status["stream"] != nil
#				puts "It's alive!"
#		else
#			puts "nope"
#		end
	end
end

module StoreData
	def save_to_file(file, object)
		File.open(file, 'w') do |f|
			f.write YAML.dump(object)
		end
	end

	def load_file(file)
		return YAML.load_file(file) if File.exist?(file)
		{}
	end
end

#streamers = load_file("#{Dir.pwd}/data/streamer_list.yml")

p "Streamer please"
uname = gets.chomp

streamer = Z3p0Twitter.new(uname)

p streamer.IDLookUp
#streamers.add ({uname => streamer.IDLookUp})
streamer.StreamStatus
