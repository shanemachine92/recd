require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key =         ENV['LCuySYY2qdALv5IbZaCAs2qQ7']
  config.consumer_secret =      ENV['r8TUgmbnJ7SlizG6dZuEfGqpKDSTkm7Bo2LsbqWJtRndE6rYTC']
  config.access_token =         ENV['4775742853-5Yix32Sd2kBQRCnqriMWnXr59IBuE5PaOoPiZ9i']
  config.access_token_secret =  ENV['WTiLREUgsGtbtJSHd02VK9qkUAL1IMncj7zB648k3tRU0']
end

stream = Twitter::Streaming::Client.new do |config|
  config.consumer_key =         ENV['LCuySYY2qdALv5IbZaCAs2qQ7']
  config.consumer_secret =      ENV['r8TUgmbnJ7SlizG6dZuEfGqpKDSTkm7Bo2LsbqWJtRndE6rYTC']
  config.access_token =         ENV['4775742853-5Yix32Sd2kBQRCnqriMWnXr59IBuE5PaOoPiZ9i']
  config.access_token_secret =  ENV['WTiLREUgsGtbtJSHd02VK9qkUAL1IMncj7zB648k3tRU0']
end