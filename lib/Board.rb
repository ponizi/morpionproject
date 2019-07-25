class Board
  def all_board
      puts "\n"
      puts " [a] [b] [c]"
      puts " --- --- ---"
      puts "| #{@symbols["a1"]} | #{@symbols["b1"]} | #{@symbols["c1"]} | [1]" 
      puts " --- --- ---"
      puts "| #{@symbols["a2"]} | #{@symbols["b2"]} | #{@symbols["c2"]} | [2]"
      puts ' --- --- ---'
      puts "| #{@symbols["a3"]} | #{@symbols["b3"]} | #{@symbols["c3"]} | [3]"
      puts ' --- --- ---'
  end
end

