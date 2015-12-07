class SteamDeals::Deal
  
  @@all = []
  
  attr_accessor :name, :details_url #come back here to add more vars if needed

  def initialize(name = "", url = "")
    @name = name
    @details_url = url
  end

  def self.scrape_deals_list #only scrapes daily deal for now
    doc = Nokogiri::HTML(open("https://steamdb.info/sales/"))
    app_list = doc.css("#sales-section-dailydeal .table-sales .appimg")
    app_list.each do |app|
      app_name = app.css("a.b")[0].text
      app_url ="https://steamdb.info/#{app.css("a.b")[0]["href"]}"
      game = SteamDeals::Deal.new(app_name,app_url)
      @@all << game
    end
    binding.pry
  end
end