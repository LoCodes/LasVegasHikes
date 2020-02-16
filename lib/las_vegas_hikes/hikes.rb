class LasVegasHikes::Hikes
  attr_accessor :title, :name, :location, :length, :time, :difficulty, :elevation, :url

  def self.trails      # Scrape url then return hikes based on data
    self.scrape_hikes
  end

  def self.scrape_hikes
    hikes = []

    hikes << self.scrape_explore

    hikes
  end

  def self.scrape_explore1
    doc = Nokogiri::HTML(open("https://www.explore-mag.com/The-Five-Best-Hikes-Near-Las-Vegas"))
    title = doc.search("h1.alignLeft").text  # move title elsewhere later?
    
    binding.pry
  end
end




  # go to article, find hike
  # extract the properties
  # instantiate a hike



    #(trail_length, time, difficulty, elevation)



  #  [hike_1, hike_2, hike_3, hike_4, hike_5]
