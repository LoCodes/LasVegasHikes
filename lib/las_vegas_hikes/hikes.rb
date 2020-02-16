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
    name = doc.search("h2")[1].text
    location = doc.search("h3")[0].text
    length = doc.search("p")[6].text.split("Trail Length: ")[1].split("Time: ")[0]
    time = doc.search("p")[6].text.split("Time:")[1].split("Difficulty:")[0]
    difficulty = doc.search("p")[6].text.split("Difficulty:")[1].split("Elevation Gain:")[0]
    elevation = doc.search("p")[6].text.split("Elevation Gain:")[1].split("p")
    url = doc.search("p a")[2].text

    binding.pry
  end
end


doc.search("p")[6].text  -> 1st hike ALL of the categories after location

doc.search("p strong")[3].text -> "Elevation Gain"


  # go to article, find hike
  # extract the properties
  # instantiate a hike



    #(trail_length, time, difficulty, elevation)



  #  [hike_1, hike_2, hike_3, hike_4, hike_5]
