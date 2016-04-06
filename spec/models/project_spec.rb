require 'rails_helper'

RSpec.describe Project, type: :model do
  it { should have_db_column :user_id }
  it { should have_db_column :title }
  it { should have_db_column :created_at }
  it { should have_db_column :updated_at }

  it { should belong_to(:user).dependent(:destroy) }
  it { should have_many :tasks }

  it { should validate_presence_of :user_id }
  it { should validate_presence_of :title }
  it { should validate_length_of(:title).is_at_most(60) }
end
