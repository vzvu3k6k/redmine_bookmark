# frozen_string_literal: true

module RedmineBookmark
  class Bookmark < ActiveRecord::Base
    self.table_name = 'redmine_bookmarks'

    belongs_to :user
    belongs_to :issue
  end
end
