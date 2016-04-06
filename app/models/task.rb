class Task < ActiveRecord::Base
  belongs_to :project, dependent: :destroy
  has_many :comments

  validates :project_id, :title, :priority, presence: true
  validates :title, length: { maximum: 60 }
  validates :priority, numericality: { greater_than_or_equal_to: 0 }
end
