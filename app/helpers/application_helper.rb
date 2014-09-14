module ApplicationHelper
  def title_helper(page_title, default = 'Discourse中文网')
    if page_title
      "#{default} - #{page_title}"
    else
      default
    end
  end
end
