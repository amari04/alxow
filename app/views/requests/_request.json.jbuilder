json.extract! request, :id, :person_id, :description, :status, :kind, :created_at, :updated_at
json.url request_url(request, format: :json)
