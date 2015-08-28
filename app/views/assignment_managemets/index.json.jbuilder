json.array!(@assignment_managemets) do |assignment_managemet|
  json.extract! assignment_managemet, :id, :name, :deadline, :score
  json.url assignment_managemet_url(assignment_managemet, format: :json)
end
