# frozen_string_literal: true

class AddFieldsToMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :description, :text
    add_column :movies, :released_on, :date
  end
end
