# frozen_string_literal: true

module RedmineBookmark
  module Patches
    module User
      extend ActiveSupport::Concern

      included do
        has_many :redmine_bookmarks, dependent: :destroy, class_name: '::RedmineBookmark::Bookmark'
      end
    end
  end
end
