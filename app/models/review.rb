# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :movie

  validates :name, presence: true

  validates :comment, length: { minimum: 25 }

  STARS = [1, 2, 3, 4, 5].freeze

  validates :stars, inclusion: { in: STARS }

  def stars_as_percent
    (stars / 5.0) * 100.0
  end
end
