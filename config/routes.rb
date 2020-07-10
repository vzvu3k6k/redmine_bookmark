# frozen_string_literal: true

get 'redmine_bookmarks', to: 'redmine_bookmarks#index'
post 'redmine_bookmarks/add', to: 'redmine_bookmarks#add', as: 'add_redmine_bookmark'
post 'redmine_bookmarks/remove', to: 'redmine_bookmarks#remove', as: 'remove_redmine_bookmark'
