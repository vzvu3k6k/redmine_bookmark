# frozen_string_literal: true

module RedmineBookmark
  # Register Redmine view hooks
  class Hook < Redmine::Hook::ViewListener
    render_on :view_issues_show_details_bottom, partial: 'redmine_bookmark/hooks/add_bookmark_button'
  end
end
