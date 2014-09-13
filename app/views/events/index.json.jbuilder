json.array!(@events) do |event|
  json.extract! event, :id, :title, :start_date, :end_date, :start_time, :end_time, :description, :all_day, :repeating, :url, :type
  json.url event_url(event, format: :json)
end
