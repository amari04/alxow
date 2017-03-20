json.extract! inventary, :id, :room_id, :invent_numb, :kind, :status, :created_at, :updated_at
json.url inventary_url(inventary, format: :json)
