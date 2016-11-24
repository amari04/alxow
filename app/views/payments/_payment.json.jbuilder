json.extract! payment, :id, :student_id, :worker_id, :cost, :status, :created_at, :updated_at
json.url payment_url(payment, format: :json)