class Board
  def all_board
    puts "\n"
    puts " [a] [b] [c]"
    puts " --- --- ---"
    puts "| #{@a1} | #{@b1} | #{@c1} | [1]" 
    puts " --- --- ---"
    puts "| #{@a2} | #{@b2} | #{@c2} | [2]"
    puts ' --- --- ---'
    puts "| #{@a3} | #{@b3} | #{@c3} | [3]"
    puts ' --- --- ---'
  end
end

