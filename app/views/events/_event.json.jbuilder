json.extract! event, :id, :mentor_id, :mentee_id, :start_time, :end_time, :length, :note, :location, :created_at, :updated_at
json.url event_url(event, format: :json)
