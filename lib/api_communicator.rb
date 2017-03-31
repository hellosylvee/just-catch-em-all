require 'json'
require 'pry'
require 'httparty'

  class ApiCommunicator
    URL = "http://pokeapi.co/api/v2/pokemon"

    def get_pokemons(pokemon_name)
      # uri = URI.parse(URL)
      # response = Net::HTTP.get_response(uri)
      response = HTTParty.get("#{URL}/#{pokemon_name}")
      JSON.parse(response.body)
    end

    def poke_info(pokemon_name)
      api_info = self.get_pokemons(pokemon_name)
      result = {}

      name = api_info["name"]
      type = api_info["types"][0]["type"]["name"]
      base_xp = api_info["base_experience"]

      result = "

#{name.capitalize} is a type of #{type} pokémon with a base experience of #{base_xp}!"
      Pokemon.find_or_create_by(name: name)
      puts "Number of pokémons in the database: " + "#{Pokemon.all.length}"
      result
    end

    def search_for_pokemon_again
      puts "Do you want to search for another pokemon again? (y/n)"
      if gets.strip.downcase == "y"
        get_pokemon_name_from_user
      else
        "goodbye friend! See ya next time!"
      end
    end
  end
