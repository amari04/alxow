json.extract! guest, :id, :person_id, :start_date, :finish_date, :event, :created_at, :updated_at
json.url guest_url(guest, format: :json)