class Game 
  @cases = ['a1','b1','c1','a2','b2','c2','a3','b3','c3']
  @j1 =[]
  @j2 =[]
  @j1_res = 0
  @j2_res = 0

  def win
    return [['a1','a2','a3'],['b1','b2','b3'],['c1','c2','c3'],['a1','b2','c3'],['a3','b2','c1'],['a1','b1','c1'],['a2','b2','c2'],['a3','b3','c3']]
  end

  def inputj1
    puts "Joueur 1 à toi de jouer"
    puts ">"
    input = gets.chomp
    return @j1 << input
  end

  def inputj2
    puts "Joueur 2 à toi de jouer"
    puts ">"
     return @j2 << gets.chomp
  end

  def test
    win.map{|cell| if @j1.include?(cell[0]) && @j1.include?(cell[1]) && @j1.include?(cell[2]) then @j1_res = "oui" end }
    win.map{|cell| if @j2.include?(cell[0]) && @j2.include?(cell[1]) && @j2.include?(cell[2]) then @j2_res = "oui" end }
  end

  def gameturn
    count = 1
    until @j1_res == ("oui") || @j2_res == ("oui") || count == 10
      if count.odd? == true
        inputj1
        test
        count = count + 1
      elsif count.odd? == false
        inputj2
        test
        count = count + 1
      end
    end
  end

end