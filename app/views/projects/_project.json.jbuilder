json.extract! project, :id, :title, :description, :user_id, :project_url, :image_url, :created_at, :updated_at
json.url project_url(project, format: :json)
