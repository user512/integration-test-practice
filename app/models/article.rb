class Article < ActiveRecord::Base
  validates :title, :body, presence: true

  default_scope { order(created_at: :desc)}

  belongs_to :user
end
