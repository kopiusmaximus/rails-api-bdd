class Article < ActiveRecord::Base
  validates :content, presence: true
  # same as:
  # validates_presence_of :content
  # (but the latter is older and not preferred)

  validates :title, presence: true

  has_many :comments, inverse_of: :article, dependent: :destroy
end
