flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#flintstones.each_index do|index|
#  p index if flintstones[index][0] == "B" && flintstones[index][1] == "e"
#end

p flintstones.index {|name| name[0,2] == "Be"}