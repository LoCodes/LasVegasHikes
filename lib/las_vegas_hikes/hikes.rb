
class LasVegasHikes::Hikes
  attr_accessor :title, :name, :location, :length, :time, :difficulty, :elevation, :url

  def initialize(attributes)
       attributes.each do |k,v| self.send(("#{k}="), v)
       end
  binding.pry
  end

  def self.trails
    self.scrape_hikes
  end

  def self.scrape_hikes
    hikes = []

    hikes << self.scrape_explore

    hikes
  end
end
