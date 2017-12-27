class Fact < ApplicationRecord
  belongs_to :ip

  validates :text, presence: true
end
