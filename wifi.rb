#!/usr/bin/env ruby
require 'open-uri'
require 'openssl'
require 'rubygems'
require 'bundler'
Bundler.require(:default)

class ScotrailWifi
  LOGIN_URL = 'https://www.ombord.info/hotspot/hotspot.cgi?method=login&username=&password=4fHKxiBEpK&realm=scotrail_free&url=success&error=error'.freeze
  CONNECTED_URL = 'http://scotrail.on.icomera.com/connected.php'.freeze

  def connect!
    open(LOGIN_URL, ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE).read
  rescue RuntimeError => e
    puts connection_details if e.message.end_with?('http://success')
    puts 'Could not connect - login redirected to error page' if e.message.end_with?('http://error')
  rescue Exception => e
    puts "Error attempting to connect: #{e.message}"
  end

  def connection_details
    html = Nokogiri::HTML(open(CONNECTED_URL).read)
    connection_info = html.css('.connected')
    raise 'Could not find connection info' if connection_info.empty?
    connection_info.text.split(' ').join(' ').split(' - ').last
  end
end

ScotrailWifi.new.connect!
