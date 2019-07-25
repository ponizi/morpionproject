class Game
    @a1 = " "
    @a2 = " "
    @a3 = " "
    @b1 = " "
    @b2 = " "
    @b3 = " "
    @c1 = " "
    @c2 = " "
    @c3 = " "
  def tourj1
    compteur_1 = 0
    array = []
    puts "Joueur 1 commence, sélectionne une case et écrit son code"
    while compteur_1 != 1
      print ">"
      choice1 = gets.chomp
      if choice1 == "a1" && @a1 == " "
        @a1 = "x"
        compteur_1 = compteur_1 + 1
      elsif choice1 == "a2" && @a2 == " "
        @a2 = "x"; compteur_1 = compteur_1 + 1
      elsif choice1 == "a3" && @a3 == " "
        @a3 = "x"; compteur_1 = compteur_1 + 1
      elsif choice1 == "b1" && @b1 == " "
        @b1 = "x"; compteur_1 = compteur_1 + 1
      elsif choice1 == "b2" && @b2 == " "
        @b2 = "x"; compteur_1 = compteur_1 + 1
      elsif choice1 == "b3" && @b3 == " "
        @b3 = "x"; compteur_1 = compteur_1 + 1
      elsif choice1 == "c1" && @c1 == " "
        @c1 = "x"; compteur_1 = compteur_1 + 1
      elsif choice1 == "c2" && @c2 == " "
        @c2 = "x"; compteur_1 = compteur_1 + 1
      elsif choice1 == "c3" && @c3 == " "
        @c3 = "x"; compteur_1 = compteur_1 + 1
      else 
        puts "La case choisie est déjà occupée, choisissez-en une autre"
      end
    end
  end

  def tourj2
    compteur_2 = 0
    puts "Joueur 2 à toi, sélectionne une case et écrit son code"

    while compteur_2 != 1
      print ">"
      choice2 = gets.chomp
      if choice2 == "a1" && @a1 == " "
        @a1 = "o"; compteur_2 = compteur_2 + 1
      elsif choice2 == "a2" && @a2 == " "
        @a2 = "o"; compteur_2 = compteur_2 + 1
      elsif choice2 == "a3" && @a3 == " "
        @a3 = "o"; compteur_2 = compteur_2 + 1
      elsif choice2 == "b1" && @b1 == " "
        @b1 = "o"; compteur_2 = compteur_2 + 1
      elsif choice2 == "b2" && @b2 == " "
        @b2 = "o"; compteur_2 = compteur_2 + 1
      elsif choice2 == "b3" && @b3 == " "
        @b3 = "o"; compteur_2 = compteur_2 + 1
      elsif choice2 == "c1" && @c1 == " "
        @c1 = "o"; compteur_2 = compteur_2 + 1
      elsif choice2 == "c2" && @c2 == " "
        @c2 = "o"; compteur_2 = compteur_2 + 1
      elsif choice2 == "c3" && @c3 == " "
        @c3 = "o"; compteur_2 = compteur_2 + 1
      else 
        puts "La case choisie est déjà occupée, choisissez-en une autre"
      end
    end
  end

  def testgame
    if @a1 == @a2 && @a2 == @a3
      return "victoire#{@a1}"
    elsif @a1 == @b1 && @b1 == @c1
      return "victoire#{@a1}"
    elsif @b1 == @b2 && @b2 == @b3
      return "victoire#{@b1}"
    elsif @c1 == @c2 && @c2 == @c3
      return "victoire#{@c1}"
    elsif @a2 == @b2 && @b2 == @c2
      return "victoire#{@a2}"
    elsif @a3 == @b3 && @b3 == @c3
      return "victoire#{@a3}"
    elsif @a1 == @b2 && @b2 == @c3
      return "victoire#{@a1}"
    elsif @a3 == @b2 && @b2 == @c1
      return "victoire#{@a3}"
    end
  end

  def perform
    compteur = 1
    result = 0
    while compteur != 10
      if compteur.odd? == true
        tourj1
        compteur = compteur + 1
      elsif compteur.odd? == false
        tourj2
        compteur = compteur + 1
      end
    end
    puts "Fin de la partie"
    if testgame == "victoirex"
      puts "Victoire du Joueur1"
    elsif testgame == "victoireo"
      puts "Victoire du Joueur2"
    end
  end
end
