class Project < ApplicationRecord
  belongs_to :user
  validates :project_url, uniqueness: true
end
