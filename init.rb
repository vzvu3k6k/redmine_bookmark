# frozen_string_literal: true

Dir[
  File.join(File.expand_path('../lib/redmine_bookmark', __FILE__), '**', '*.rb')
].each do |file|
  require_dependency file
end

Redmine::Plugin.register :redmine_bookmark do
  name 'Redmine Bookmark plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  menu :top_menu,
       :redmine_bookmarks,
       controller: :redmine_bookmarks, action: :index
end

ActiveSupport::Reloader.to_prepare do
  Issue.include(RedmineBookmark::Patches::Issue)
  IssuesController.include(RedmineBookmark::Patches::IssuesController)
  User.include(RedmineBookmark::Patches::User)
end
