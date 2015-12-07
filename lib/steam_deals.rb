require 'open-uri'
require 'pry'
require 'nokogiri'

require "steam_deals/version"
require "steam_deals/deal"
#require "steam_deals/cli"

module SteamDeals
end

game = SteamDeals::Deal.new("Screencheat","https://steamdb.info/app/301970/")
game.scrape_add_details