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
    length = "2.4 km roundtrip, out-and-back trail"    doc.search("strong")[0].text
    time = "1 hour"
    difficulty = doc.search("strong")[2].text
    elevation = doc.search("strong")[3].text
    readmore =

    binding.pry
  end
end



   second hike

    name = doc.search("h2")[2].text
    location = doc.search("h3")[1].text
    length =
    time =
    difficulty =
    elevation =
    readmore =





     third hike

    name = doc.search("h2")[3].text
    location = doc.search("h3")[2].text
    length =
    time =
    difficulty =
    elevation =
    readmore =




     4th hikes

     name = doc.search("h2")[4].text
     location = doc.search("h3")[3].text
     length =
     time =
     difficulty =
     elevation =
     readmore =



    5th hike

    name = doc.search("h2")[5].text
    location = doc.search("h3")[4].text
    length =
    time =
    difficulty =
    elevation =
    readmore =

  # go to article, find hike
  # extract the properties
  # instantiate a hike



    #(trail_length, time, difficulty, elevation)



  #  [hike_1, hike_2, hike_3, hike_4, hike_5]
