require 'net/http'
require "uri"

desc "This task is called by the Heroku scheduler add-on"

task :keep_ibetya_alive => :environment do
  
  urlString = 'http://ibetya.herokuapp.com/users.json'

  # Refresh Odds
  url = URI.parse(urlString)
  http = Net::HTTP.new(url.host, url.port)
  request = Net::HTTP::Get.new(url.request_uri)
  response = http.request(request)
  jsonRes = JSON(response.body)

  puts jsonRes

end