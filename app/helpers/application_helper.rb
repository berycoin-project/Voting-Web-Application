module ApplicationHelper
  def approved
    @approved ||= Status.find_by_name("approved")
  end
  def disapproved
    @disapproved ||= Status.find_by_name("disapproved")
  end
  def active
    @active ||= Status.find_by_name("active")
  end
  def completed
    @completed ||= Status.find_by_name("completed")
  end
  def fresh
    @fresh ||= Status.find_by_name("new")
  end
  def review
    @review ||= Status.find_by_name("review")
  end
  def payout
    @payout ||= Status.find_by_name("payout")
  end
end
