require 'bundler'
require 'colorize'

Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'board'
require 'boardcase'
require 'game'
require 'player'
require 'show'


class Application
  def perform
    val="yes"
    game=Game.new
    while val != "no"
      game.turn(game)
      val=""
      puts "voulez vous continuer ? "
      val=gets.chomp
    end
    puts game.victory
  end
end










Application.new.perform