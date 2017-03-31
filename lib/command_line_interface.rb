# require 'rest-client'
require 'json'
require 'pry'
require_relative '../models/user.rb'


class CommandLineInterface
  # attr_reader :user_name
  #
  # def initialize
  #   @user_name = user_name
  # end

  def welcome
    puts"########################################"
    puts"#                                      #"
    puts"#                                      #"
    puts"#    ▓▓     Welcome to Our      ▓▓     #"
    puts"#    ▓▓   Pokémon API Browser   ▓▓     #"
    puts"#                                      #"
    puts"#                                      #"
    puts"########################################"
  end

  def artwork1

    puts"$                                      $"
    sleep(4.0/24.0)
    puts"$                                      $"
    sleep(4.0/24.0)
    puts"$             @@@@@@@@@@@@             $"
    sleep(4.0/24.0)
    puts"$           @@@@@@@@@@@@@@@@           $"
    sleep(4.0/24.0)
    puts"$         @@@@@@@@@@@@@@@@@@@@         $"
    sleep(4.0/24.0)
    puts"$        @@@@@@@@@----@@@@@@@@@        $"
    sleep(4.0/24.0)
    puts"$       @@@@@@@  ┌ -- ┐  @@@@@@@       $"
    sleep(4.0/24.0)
    puts"$       ████████| |██| |████████       $"
    sleep(4.0/24.0)
    puts"$       @        └ __ ┘        @       $"
    sleep(4.0/24.0)
    puts"$        @                    @        $"
    sleep(4.0/24.0)
    puts"$         @                  @         $"
    sleep(4.0/24.0)
    puts"$           @              @           $"
    sleep(4.0/24.0)
    puts"$___________  @@@@@@@@@@@@  ___________$"
    sleep(1)
  end

  def enter_name
    puts "
     *** Please enter your name ***"
    user_name = gets.strip.downcase
    #binding.pry
    puts "

Thanks #{user_name}!

    "
    User.new(name: user_name)
  end

  # def new_user(user_name)
  #   # user = User.find_or_create_by(name: user_name)
  #   User.new(name: user_name)
  # end

  def get_pokemon_name_from_user
    sleep(2)
    puts "Now lets look for some Pokémon! Type in a name of your favorite Pokemon.
Or try typing in a number between 1 and 721 and see what you find.

"
    gets.strip.downcase
  end

  def give_stats_to_user(response)
    api = ApiCommunicator.new
    puts api.poke_info(response)
  end
end
