require 'rails_helper'

RSpec.describe Task, type: :model do
  it { should have_db_column :project_id }
  it { should have_db_column :title }
  it { should have_db_column :deadline }
  it { should have_db_column :priority }
  it { should have_db_column :created_at }
  it { should have_db_column :updated_at }

  it { should belong_to(:project).dependent(:destroy) }
  it { should have_many :comments }

  it { should validate_presence_of :project_id }
  it { should validate_presence_of :title }
  it { should validate_presence_of :priority }

  it { should validate_length_of(:title).is_at_most(60) }

  it { should validate_numericality_of(:priority).is_greater_than_or_equal_to(0) }
end
