require 'open-uri'
require 'pry'
require 'nokogiri'

require "steam_deals/version"
require "steam_deals/deal"
#require "steam_deals/cli"

module SteamDeals
end

SteamDeals::Deal.scrape_deals_list
#game = SteamDeals::Deal.all[0]
#game.scrape_add_details