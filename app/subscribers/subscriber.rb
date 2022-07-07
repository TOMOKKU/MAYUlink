require 'mqtt'

MQTT::Client.connect(:host => 'test.mosquitto.org', :port => 8883, :ssl => true ) do |c|
    c.get('test') do |topic,message|
        puts "#{topic}: #{message}"
    end
end