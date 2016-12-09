json.extract! experiment, :id, :date, :title, :purpose, :summary_result, :created_at, :updated_at
json.url experiment_url(experiment, format: :json)