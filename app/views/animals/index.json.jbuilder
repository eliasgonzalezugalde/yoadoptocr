json.array!(@animals) do |animal|
  json.extract! animal, :id, :title, :type, :description, :photo, :Locations_id
  json.url animal_url(animal, format: :json)
end
