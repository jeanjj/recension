json.array!(@oeuvres) do |oeuvre|
  json.extract! oeuvre, :id, :auteur, :titre, :forme, :date, :localisation, :descritpion, :critiques, :connexes
  json.url oeuvre_url(oeuvre, format: :json)
end
