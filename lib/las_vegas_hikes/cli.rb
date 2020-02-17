#CLI Controller

class LasVegasHikes::CLI


  def call
    hike_list
    pick_trail
  end

  def hike_list
    puts "Las Vegas Top 5 Hikes:"
    Scraper.scrape_hikes
  end


  def pick_trail
    puts "Enter the number of the trail you would like more information on or type list to see the list again or type exit to exit:"
      input = gets.strip

      if input.to_i == 1
        puts Scraper.lost_creek
        pick_trail
      elsif input.to_i == 2
        puts Scraper.crystal_springs_boardwalk
        pick_trail
      elsif input.to_i == 3
        puts Scraper.mouses_tank
        pick_trail
      elsif input.to_i == 4
        puts Scraper.white_domes_loop
        pick_trail
      elsif input.to_i == 5
        puts Scraper.south_loop_trail
        pick_trail
      elsif input == "list"
        hike_list
      elsif input == "exit"
        goodbye
      else
        puts "Invalid option, please try again. "
      end
  end

  def goodbye
    puts "Have fun on your hike!"
  end
end
