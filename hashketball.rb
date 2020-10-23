require "pry"
def game_hash 
  {
    home: { #top key
      team_name: "Brooklyn Nets",  # team level key/value
      colors: ["Black", "White"],  #array as value
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
def get_all_players
  game_hash = game_hash()
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]
  return home_players.concat away_players
end

def num_points_scored(player_name)
  all_player = get_all_players()
  y = all_player.select do |x|
    x[:player_name] == player_name
  end
  return y[0][:points] 
end

def shoe_size(player_name)
all_player = get_all_players()
y = all_player.select do |x|
  x[:player_name] == player_name
end
return y[0][:shoe]
end

def team_colors(team_name)
  case team_name
  when game_hash[:home][:team_name]
    game_hash[:home][:colors]
  when game_hash[:away][:team_name]
    game_hash[:away][:colors]
end
end

def team_names
 [game_hash[:home][:team_name], game_hash[:away][:team_name]]
 end

def player_numbers(team_name)
new_arry =[]
game_hash.each do |key,value |
 if value[:team_name] == team_name
   value[:players].each do |player|
    new_arry  << player[:number]
   end
  end
end 
new_arry
end

def player_stats(player_name)
  all_player = get_all_players()
  h = {}
  all_player.each do | x|
   if player_name == x[:player_name]
     h = x 
 
  end
 end
h
end
#hashketball big_shoe_rebounds returns the number of rebounds of the player with the biggest shoe size

def big_shoe_rebounds
biggest_shoe = 0 
rebounds = 0 
  game_hash.collect do |location, team_data|
    team_data[:players].collect do |key, value|
      if key[:shoe] > biggest_shoe
        binding.pry
       biggest_shoe = key[:shoe]
       rebounds = key[:rebounds]
      end
    end
  end
  rebounds
end

 

