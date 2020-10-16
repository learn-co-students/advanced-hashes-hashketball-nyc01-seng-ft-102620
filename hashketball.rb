require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(player_name)
  hashketball = game_hash 
 
  
  hashketball.each do |key,value|
    value[:players].each do |player, details|
      if player.has_value?(player_name)
        return player[:points]
      end
      #binding.pry
    end
  end
end 

def team_colors(input_name)
  hashketball = game_hash 
  
hashketball.each do |key, value|
  if value.has_value?(input_name)
    #binding.pry
    return value[:colors]
  #binding.pry
end
end
end 

def team_names
    hashketball = game_hash 
    name_array = []

hashketball.each do |key, value|
  if value.has_value?("Brooklyn Nets") || value.has_value?("Charlotte Hornets")
    name_array << value[:team_name]
 #binding.pry
    end
  end 
  #binding.pry
name_array
end 

def player_numbers(team)
      hashketball = game_hash 
      player_numbers = []
i = 0

hashketball.each do |key, value|
    if value.has_value?(team)
      while i < value[:players].length do
     player_numbers << value[:players][i][:number]
     i += 1
    #binding.pry
      end
    end 
  end
  player_numbers
  #binding.pry
  end
  
def shoe_size(player_name)
  hashketball = game_hash 
  
  hashketball.each do |key, value|
    value[:players].each do |stats, data|
      if stats[:player_name] == player_name
        return stats[:shoe]
      end
    #binding.pry
    end 
  end
end 

def player_stats(given_player)
  hashketball = game_hash 
  
  hashketball.each do |key, value|
   value[:players].each do |stats, data|
    if stats.has_value?(given_player)
      return stats
      end
     #binding.pry
    end 
  end
 end

def big_shoe_rebounds
    hashketball = game_hash 
  
  shoe_size = 0
  winner_rebounds = 0

hashketball.each do |key, value|
   value[:players].each do |stats, data|
     if stats[:shoe] > shoe_size
       shoe_size = stats[:shoe]
       winner_rebounds = stats[:rebounds]
    #winner_hash = value[:players].max_by { |x| :shoe}
     #winner_hash[:rebounds]
      end 
     #binding.pry
    end 
   end 
 winner_rebounds
 #binding.pry
 end 

