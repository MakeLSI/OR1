# lef conversion program by Seijiro Moriyama (May 13, 2018)
# works only for ones generated by ALSI Yamdada-san
require 'byebug'

$direction={}
cell = nil
lef_cells = []
File.read(File.join(File.dirname(__FILE__),'./OR1_stdcells.lib')).each_line{|l|
#  puts l
  if l=~/cell\((\S+)\)/
    cell = $1
    $direction[cell]={}
    lef_cells << cell
  elsif l=~/pin\((\S+)\).*direction: *(\S+);/
#    puts $1, $2
    $direction[cell][$1] = $2.upcase
  end
}
# debugger

def port_with_path layer, width, x1, y1, x2, y2
    if y1 == y2
      xll = x1.to_f
      yll = y1.to_f - width.to_f/2.0
      xur = x2.to_f
      yur = y1.to_f + width.to_f/2.0
    elsif x1 == x2
      xll = x1.to_f - width.to_f/2.0
      yll = y1.to_f
      xur = x1.to_f + width.to_f/2.0
      yur = y2.to_f
    end
    p =<<EOF
    PORT
      LAYER #{layer} ;
        RECT #{xll} #{yll} #{xur} #{yur} ;
    END
EOF
    p
end

def path_to_rect lines
  layer = width = x1 = y1 = x2 = y2 = rest = nil
  lines.each_line{|l|
    if l=~/LAYER +(\S+)/
      layer = $1
    elsif l=~/WIDTH +(\S+)/
      width = $1
    elsif l=~/PATH +(\S+) +(\S+) +(\S+) +(\S+) +(.*);/
      x1=$1
      y1=$2
      x2=$3
      y2=$4
      rest = $5.strip
    end
  }
  p = port_with_path layer, width, x1, y1, x2, y2 
  return p if rest.size == 0
  x1 = x2
  y1 = y2
  while rest.size > 0
    rest =~ /(\S+) +(\S+) *(.*)/
    x2 = $1
    y2 = $2
    rest = $3
    p << port_with_path(layer, width, x1, y1, x2, y2)
    x1 = x2
    y1 = y2
  end
  p
end

def read_lef lines
  pl = nil 
  cell = nil
  pin = nil 
  ports = []
  port_count = 0
  port_type = []
  flag_port = false
  lines.each_line{|l|
    if flag_port
      if pl =~ /END/
        ports[port_count] << pl
        flag_port = false 
        port_count = port_count + 1 
      else
        if pl=~/LAYER ML/
          pl.sub! 'ML', 'ML'
        elsif pl =~ /POLYGON/
          port_type[port_count] = 'POLYGON'
        elsif pl =~ /PATH/
          port_type[port_count] = 'PATH'
        end
        if pl=~/(PATH|POLYGON)[^;]*$/
          ports[port_count] << pl.chomp + l.strip.sub(/  ;$/, ' ;') + "\n"
          l = nil
        elsif pl=~/RECT /
          ports[port_count] << pl.sub(/  ;$/, ' ;')
        else
          ports[port_count] << pl if pl
        end
      end
    elsif pl=~/(PATH|POLYGON)[^;]*$/
      puts pl.chomp + l.strip.sub(/  ;$/, ' ;')
      l = nil
    elsif pl=~/RECT /
      puts pl.sub(/  ;$/, ' ;')
    elsif pl=~/PORT/
      ports[port_count] = pl
      flag_port = true
    elsif pl=~/MACRO *(\S+)/
      cell = $1
      puts pl
    elsif pl=~/PIN *(\S+)/
      pin = $1 
      puts pl
      # puts "cell:#{cell}, pin:#{pin}"
      dir = $direction[cell][pin] || 'INOUT' # for vdd, gnd, etc. 
      puts "    DIRECTION #{dir} ;" if dir
    elsif pl=~/USE SIGNAL/ 
      puts "    USE SIGNAL ;\n"
    elsif pl=~/END *#{pin}/
      ports.each_with_index{|p, i|
        if port_type[i] == 'PATH'
          puts path_to_rect(p)
        else
          puts p
        end
      }
      port_count = 0
      ports = []
      port_type = []
      puts pl
    elsif pl=~/LAYER ML/
      pl.sub! 'ML', 'ML'
      puts pl
    else
      puts pl if pl
    end
    pl = l
  }
  puts pl
end

def extract_macro name, lines 
  result = nil
  lines.each_line{|l|
    if result
      result << l
      break if l=~/END +#{name}/
    elsif l =~ /MACRO +#{name}/
      result = l
    end
  }
  result
end

if ARGV[0].nil?
  lines =<<EOF
    PORT
      LAYER ML1 ;
        WIDTH 1.000 ;
        PATH 4.800 20.500 4.800 18.000 ;
    END
EOF
  
  puts path_to_rect(lines)
  
  debugger
  
  lines =<<EOF
    PORT
      LAYER ML1 ;
        WIDTH 1.000 ;
        PATH 4.800 20.500 4.800 18.000 7.500 18.000 7.500 6.500 6.800 6.500 6.800 3.800 ;
    END
EOF
  
  puts path_to_rect(lines)
  
  debugger
end

if File.directory? ARGV[0]
  merged = File.join(File.dirname(__FILE__), File.basename(ARGV[0])+'_merged.lef')
  File.open(merged, 'w'){|f|
    lef_cells.each{|lef|
      lines = File.read(File.join ARGV[0], lef+'.lef')
      lines = extract_macro lef, lines
      read_lef lines
      f.puts lines
    }
  }
#  puts "'#{merged}' created"
else
  lines = File.read(ARGV[0])
#  lines = extract_macro 'an21', lines
  read_lef lines
end
