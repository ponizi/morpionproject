require './lib/Board'
require './lib/Game'
require './lib/Player'

puts "Bonjour et bienvenue dans le morbac"
puts "\n"
puts "Veuillez choisir un nom pour le Joueur 1"
print ">"
name_j1 = gets.chomp
puts "Veuillez choisir un nom pour le Joueur 2"
print ">"
name_j2 = gets.chomp
player1 = Player.new("#{name_j1}")
player2 = Player.new ("#{name_j2}")
morpion = Game.new
morpion.perform