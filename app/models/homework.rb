class Homework < ApplicationRecord
  has_many :details
  has_many :users, through: :details
end
