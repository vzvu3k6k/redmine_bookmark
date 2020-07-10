# frozen_string_literal: true

class RedmineBookmarksController < ApplicationController
  before_action :require_login
  before_action :find_bookmarks, only: %i[index add remove]
  before_action :find_issue, only: %i[add remove]

  def index
    @bookmarks = @bookmarks.includes(:issue).order(id: :desc)
  end

  def add
    @bookmarks.create(issue: @issue)
    render :update_button
  end

  def remove
    @bookmarks.where(issue: @issue).delete_all
    render :update_button
  end

  private

  def find_issue
    @issue = Issue.find(params[:issue_id])
  end

  def find_bookmarks
    @bookmarks = User.current.redmine_bookmarks
  end
end
