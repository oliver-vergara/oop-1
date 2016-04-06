requirerequire_relative "list"
require_relative "song"

list = List.new
list.add_song("Prince", 234, "All of this and more")
list.add_song("Prince", 142, "One more time.")
list.add_song("Prince", 438, "Oh baby baby")
p list
# list.songs.first.play
list.songs.first.friendly_duration
# list.play_all
puts "total duration #{list.total_duration} seconds"