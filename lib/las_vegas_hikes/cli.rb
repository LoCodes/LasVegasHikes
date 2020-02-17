#CLI Controller

class LasVegasHikes::CLI


  def call
    hike_list
    pick_trail
    goodbye
  end

  def hike_list
    #heredoc https://zaiste.net/heredoc_in_ruby/
    puts "Las Vegas Top 5 Hikes:"
    Scraper.scrape_hikes
  end

#    @hikes = LasVegasHikes::Hikes.trails     # This shows the list (uncomment if this is what you want later)
#    @hikes.each.with_index(1) do |hike, i|    # This shows the objects itself
#      puts "#{i}. #{hike.name}"# - #{hike.location} - #{hike.length} - #{hike.time} - #{hike.difficulty} - #{hike.elevation} - #{hike.url}"



  def pick_trail
    puts "Enter the number of the trail you would like more information on or type list to see the list again or type exit to enter:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase


      if input == 1
        current_hike = Scraper.lost_creek
        puts "#{the_hike.name} - #{the_hike.location} - #{the_hike.length} - #{the_hike.time} - #{the_hike.difficulty} - #{the_hike.elevation} - #{the_hike.url}"
      elsif input == "list"
        hike_list
      else
        puts "Invalid option, please try again. "
      end
    end
  end


  def goodbye
    puts "Have fun on your hike!"
  end
end
