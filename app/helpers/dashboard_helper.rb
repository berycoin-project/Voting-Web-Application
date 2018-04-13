module DashboardHelper
  def projects
    current_user.projects
  end
  def comments
    current_user.comments
  end
  def revenue
    current_user.projects.sum(:project_budget)
  end
end
