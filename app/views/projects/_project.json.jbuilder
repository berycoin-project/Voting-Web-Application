json.extract! project, :id, :name, :project_content, :project_skills, :project_budget, :created_at, :updated_at
json.url project_url(project, format: :json)