require 'pry'
require 'nokogiri'
require 'open-uri'

class Scraper

  url = "https://www.explore-mag.com/The-Five-Best-Hikes-Near-Las-Vegas"
  @@doc = Nokogiri::HTML(open(url))


  def self.scrape_hikes
    @@doc.search("h2")[1..5].each_with_index do |hike, num|
      puts "#{num + 1}. #{hike.children.text}"
      end
  end


  def self.lost_creek
    @@doc.search("p")[6].children.map do |info|
    info.text
    end
  end


  def self.crystal_springs_boardwalk
    @@doc.search("p")[14].children.map do |info|
    info.text
    end
  end


  def self.mouses_tank
    @@doc.search("p")[21].children.map do |info|
    info.text
    end
  end

  def self.white_domes_loop
    @@doc.search("p")[29].children.map do |info|
    info.text
    end
  end


  def self.south_loop_trail
    @@doc.search("p")[37].children.map do |info|
    info.text
    end
  end
end



#Scraper.scrape_hikes

  # def self.scrape_explore1
  #   explore1 =
  #
  #   hike = self.new
  #   hike.title = doc.search("h1.alignLeft").text  # move title elsewhere later?
  #  hike.name = doc.search("h2")[1].text
  #   hike.location = doc.search("h3")[0].text
  #   hike.length = doc.search("p")[6].text.split("Trail Length: ")[1].split("Time: ")[0]
  #   hike.time = doc.search("p")[6].text.split("Time:")[1].split("Difficulty:")[0]
  #   hike.difficulty = doc.search("p")[6].text.split("Difficulty:")[1].split("Elevation Gain:")[0]
  #   hike.elevation = doc.search("p")[6].text.split("Elevation Gain:")[1].split("p")
  #   hike.url = doc.search("p a")[2].text
  #
  #   hike
  # end
  #
  # def self.scrape_explore2
  #   explore2 = Nokogiri::HTML(open(@@url))
  #
  #   hike = self.new
  #  hike.name = doc.search("h2")[2].text
  #   hike.location = doc.search("h3")[1].text
  #   hike.length =  doc.search("p")[14].text.split("Trail Length: ")[1].split("Time: ")[0] #1 km roundtrip, out-and-back trail
  #   hike.time =  doc.search("p")[14].text.split("Time:")[1].split("Difficulty:")[0]    #1 Hour
  #   hike.difficulty = doc.search("p")[14].text.split("Difficulty:")[1].split("Elevation Gain:")[0]              #Easy
  #   hike.elevation = doc.search("p")[14].text.split("Elevation Gain:")[1].split("p")   #minimal
  #   hike.url = doc.search("p a")[4].text
  #
  #   hike
  #
  #
  # end
  #
  # def self.scrape_explore3
  #   explore3 = Nokogiri::HTML(open(@@url))
  #
  #   hike = self.new
  #  hike.name = doc.search("h2")[3].text
  #   hike.location = doc.search("h3")[2].text
  #   hike.length = doc.search("p")[21].text.split("Trail Length: ")[1].split("Difficulty:")[0] #1.6 km roundtrip, out-and-back trail
  #   hike.time = doc.search("p")[21].text.split("Time:")[1].split("p")    #1 Hour
  #   hike.difficulty =  doc.search("p")[21].text.split("Difficulty:")[1].split("Time:")[0]              #Easy
  #
  #   hike.elevation =  #"n/a"
  #   hike.url = doc.search("p a")[6].text   #http://www.valley-of-fire.com/mouses-tank/
  #
  #
  #   hike
  #
  # end
  #
  #
  # def self.scrape_explore4
  #   explore4 = Nokogiri::HTML(open(@@url))
  #
  #
  #   hike = self.new
  #   hike.name = doc.search("h2")[4].text  #"4. White Domes Loop"
  #   hike.location = doc.search("h3")[3].text  #"Valley of Fire State Park"
  #   hike.length =  doc.search("p")[29].text.split("Trail Length: ")[1].split("Time:")[0] #1.7 km, loop trail
  #   hike.time =  doc.search("p")[29].text.split("Time:")[1].split("p")   #1 hour
  #   hike.difficulty =    #n/a
  #   hike.elevation = #n/a
  #   hike.url = doc.search("p a")[8].text   #parks.nv.gov/valley-of-fire
  #
  #   hike
  # end
  #
  #
  # def self.scrape_explore5
  #   explore5 = Nokogiri::HTML(open(@@url))
  #
  #   hike = self.new
#     hike.name = doc.search("h2")[5].text  #5. South Loop Trail
  #   hike.location = doc.search("h3")[4].text  #"Mount Charleston"
  #   hike.length =  doc.search("p")[37].text.split("Trail Length: ")[1].split("Difficulty:")[0] #27 km, loop trail
  #   hike.time =  doc.search("p")[37].text.split("Time:")[1].split("p")   #5-8 hour
  #   hike.difficulty = doc.search("p")[37].text.split("Difficulty:")[1].split("Time:")[0] #Challenging
  #   hike.elevation = #n/a
  #   hike.url = doc.search("p a")[8].text
  #
  #   hike
  # end
