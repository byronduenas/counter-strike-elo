json.array!(@games) do |game|
  json.extract! game, :id, :winner_id, :loser_id, :winner_score, :loser_score, :map_id, :date
  json.url game_url(game, format: :json)
end
