# frozen_string_literal: true

class CreateRedmineBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table(:redmine_bookmarks) do |t|
      t.references :user
      t.references :issue
    end
  end
end
