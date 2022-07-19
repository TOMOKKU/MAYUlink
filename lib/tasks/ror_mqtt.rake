namespace :ror_mqtt do
    desc "Get location and number of people from MAYU"
    task return_info: :environment do
        MQTT::Client.connect('test.mosquitto.org') do |c|
            # If you pass a block to the get method, then it will loop
            c.get('test') do |topic,message|
              puts "#{topic}: #{message}"
            end
          end
    end
end
