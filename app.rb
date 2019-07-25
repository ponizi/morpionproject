require './lib/Board'
require './lib/Game'
require './lib/Player'
require './lib/Boardcase'
require 'pry'

puts "Bonjour et bienvenue dans le morpac du futur"
puts "\n"
puts "Joueur 1 veuillez décliner votre identité"
print ">"
name_j1 = gets.chomp
puts "Joueur 2 veuillez décliner votre identité"
print '>'
name_j2 = gets.chomp
@player1 = Player.new("#{name_j1}")
@player2 = Player.new("#{name_j2}")
theboard = Board.new
boardcases = Boardcase.new
morbac = Game.new
morbac.gameturn