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


def num_points_scored(player)
  score = []
  game_hash.each do |location, team_data|
    team_data[:players].select do |player_data|
      if player_data[:player_name] == player
        score = player_data[:points]
      end
    end
  end
  score
end


def shoe_size(player)
  shoe_size = []
  game_hash.each do |location, team_data|
    team_data[:players].select do |player_data|
      if player_data[:player_name] == player
        shoe_size = player_data[:shoe]
      end
    end
  end
  shoe_size
end


def team_colors(team)
  colors = []
  game_hash.each do |location, team_data|
      if team_data[:team_name] == team
        colors = team_data[:colors]
      end
    end
  colors
end


def team_names
  names = []
  names[0] = game_hash[:home][:team_name]
  names[1] = game_hash[:away][:team_name]
  names
end


def player_numbers(team)
  numbers = []
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team
      team_data[:players].each do |player|
        numbers << player[:number]
      end
    end
  end
  numbers
end


def player_stats(player)
  stats = []
  game_hash.each do |location, team_data|
    team_data[:players].select do |player_data|
      if player_data[:player_name] == player
        stats = player_data
      end
    end
  end
  stats
end


def big_shoe_rebounds
  biggest_shoe = 0
  shoe_owner = ""
  rebounds = 0
  game_hash.each do |location, team_data|
    team_data[:players].select do |player_data|
      if player_data[:shoe] > biggest_shoe
        biggest_shoe = player_data[:shoe]
        shoe_owner = player_data[:player_name]
        rebounds = player_data[:rebounds]
      end
    end
  end
rebounds
end





















