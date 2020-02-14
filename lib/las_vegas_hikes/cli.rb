#CLI Controller

class LasVegasHikes::CLI


  def call
    puts "Las Vegas Hikes:"
    list_hikes
  end

  def list_hikes
    #heredoc https://zaiste.net/heredoc_in_ruby/
    puts <<-DOC
      1. Lost Creek Falls
      2. Crystal Springs Boardwalk
      3. Mouse’s Tank - Valley of Fire State Park
      4. White Domes Loop Valley of Fire State Park
      5. South Loop Trail Mount Charleston
    DOC
  end
end
