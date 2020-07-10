# frozen_string_literal: true

module RedmineBookmark
  module Patches
    module IssuesController
      extend ActiveSupport::Concern

      included do
        helper RedmineBookmarksHelper
      end
    end
  end
end
