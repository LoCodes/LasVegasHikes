class LasVegasHikes::Hikes

  attr_accessor :name, :location, :length, :time, :difficulty, :elevation, :url



  def self.trails
    #Should return instancecs of each hike.
    puts <<-DOC
      1. Lost Creek Falls
      2. Crystal Springs Boardwalk
      3. Mouse’s Tank - Valley of Fire State Park
      4. White Domes Loop Valley of Fire State Park
      5. South Loop Trail Mount Charleston
    DOC

    #(trail_length, time, difficulty, elevation)



    hike_1 = self.new
    hike_1.name = "Lost Creek Falls"
    hike_1.location = "Red Rock Canyon National Convservation Area"
    hike_1.length = "2.4km rounddtrip, out-and-back trail"
    hike_1.time = "1 hour"
    hike_1.difficulty = "Easy"
    hike_1.elevation  = "minimal"
    hike_1.url = "redrockcanyonlv.org"



    hike_2 = self.new
    hike_2.name = "Crystal Springs Boardwalk"
    hike_2.location = "Ash Meadows National Wildlife Refuge"
    hike_2.length = "1 km rounddtrip, out-and-back trail"
    hike_2.time = "1 hour"
    hike_2.difficulty = "Easy"
    hike_2.elevation = "minimal"
    hike_2.url = "fws.gov/refuge/ash_meadows/"


    hike_3 = self.new
    hike_3.name = "Mouse’s Tank"
    hike_3.location = "Valley of Fire State Park"
    hike_3.length = "1.6 km roundtrip, out-and-back trail"
    hike_3.time = "1 hour"
    hike_3.difficulty = "Easy"
    hike_3.elevation = "n/a"
    hike_3.url = "valley-of-fire.com/mouses-tank"

    hike_4 = self.new
    hike_4.name = "White Domes Loop"
    hike_4.location = "Valley of Fire State Park"
    hike_4.length = "1.7 km, loop trail"
    hike_4.time = "1 hour"
    hike_4.difficulty = "n/a"
    hike_4.elevation = "n/a"
    hike_4.url = "http://parks.nv.gov/parks/valley-of-fire"

    hike_5 = self.new
    hike_5.name = "South Loop Trail"
    hike_5.location = "Mount Charleston"
    hike_5.length = "27.4 km roundtrip, out-and-back trail"
    hike_5.time = "5-8 hours"
    hike_5.difficulty = "Challenging"
    hike_5.elevation = "n/a"
    hike_5.url = "https://www.summitpost.org/south-loop-trail/156402"

    [hike_1, hike_2, hike_3, hike_4, hike_5]
  end
end
