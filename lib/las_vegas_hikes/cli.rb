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
    @hikes = LasVegasHikes::Hikes.trails
  #  puts <<-DOC
  #    1. Lost Creek Fallss
  #    2. Crystal Springs Boardwalk
  #    3. Mouse’s Tank - Valley of Fire State Park
  #    4. White Domes Loop Valley of Fire State Park
  #    5. South Loop Trail Mount Charleston
  #  DOC
  end

  def pick_trail
    puts "Enter the number of the trail you would like more information on or type list to see the list again or type exit to enter:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on trail 1.. "
      when "2"
        puts "More info on trail 2.. "
      when "3"
        puts "More info on trail 3.. "
      when "4"
        puts "More info on trail 4.. "
      when "5"
        puts "More info on trail 5.. "
      when "list"
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
