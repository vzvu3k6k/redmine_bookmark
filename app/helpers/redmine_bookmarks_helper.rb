module RedmineBookmarksHelper
  def redmine_bookmark_button(issue)
    is_bookmarked = User.current.redmine_bookmarks.exists?(issue: issue)

    text = is_bookmarked ? l(:button_remove_redmine_bookmark) : l(:button_add_bookmark_bookmark)
    icon_class = is_bookmarked ? 'icon-fav' : 'icon-fav-off'
    path_method = is_bookmarked ? :remove_redmine_bookmark_path : :add_redmine_bookmark_path

    link_to(
      text,
      send(path_method, issue_id: issue, format: 'js'),
      class: "icon #{icon_class} redmine-bookmark-button",
      method: 'post',
      data: { remote: true }
    )
  end
end
