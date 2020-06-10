File.read(ARGV[0]).each_line{|l|
  if l=~/RECT /
    puts "RECT: '#{l.chop}'\n"
    l=~/[ \t]*RECT[ \t]+(.+)[ \t]+(.+)[ \t]+(.+)[ \t]+(.+)[ \t]*;/
    puts "llx=#{$1} lly=#{$2} urx=#{$3} ury=#{$4}"
  elsif l=~/POLYGON/
    puts "POLYGON: '#{l.chop}'\n"
    l=~/[ \t]*POLYGON[ \t]+([^ \t]+)[ \t]+([^ \t]+)[ \t]+.*;/
    puts "llx=#{$1} lly=#{$2}"
  end
}
