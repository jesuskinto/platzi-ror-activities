json.extract! activity, :id, :name, :description, :due_date, :category_id, :created_at, :updated_at
json.url activity_url(activity, format: :json)
