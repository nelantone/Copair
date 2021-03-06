# frozen_string_literal: true

class Skill < ApplicationRecord
  has_many :matches
  has_many :users, through: :matches
end
