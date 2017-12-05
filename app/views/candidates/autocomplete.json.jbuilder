json.candidates do
  json.array!(@candidates) do |candidate|
    json.name candidate.name
    json.url candidate_path(candidate)
  end
end