json.extract! experiment_user, :id, :experiment_id, :user_id, :created_at, :updated_at
json.url experiment_user_url(experiment_user, format: :json)