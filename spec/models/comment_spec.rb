require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { should have_db_column :task_id }
  it { should have_db_column :body }
  it { should have_db_column :attachments }
  it { should have_db_column :created_at }
  it { should have_db_column :updated_at }

  it { should belong_to(:task).dependent(:destroy) }

  it { should validate_presence_of :body }
  it { should validate_length_of(:body).is_at_most(300) }
end
