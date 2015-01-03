json.array!(@sports) do |sport|
  json.extract! sport, :id, :player_name, :team_name
  json.url sport_url(sport, format: :json)
end
