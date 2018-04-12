module DashboardHelper
  def projects
    current_user.projects.count
  end
  def active_projects

  end
end
