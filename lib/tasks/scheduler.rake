require 'net/http'
require "uri"

desc "This task is called by the Heroku scheduler add-on"

task :keep_ibetya_alive => :environment do
  
  urlString = 'http://ibetya.herokuapp.com'

  # Refresh Odds
  url = URI.parse(urlString)
  http = Net::HTTP.new(url.host, url.port)
  request = Net::HTTP::Get.new(url.request_uri)
  response = http.request(request)

end

task :keep_appsdks_alive => :environment do
  
  urlString = 'http://www.appsdks.com'

  # Refresh Odds
  url = URI.parse(urlString)
  http = Net::HTTP.new(url.host, url.port)
  request = Net::HTTP::Get.new(url.request_uri)
  response = http.request(request)

end