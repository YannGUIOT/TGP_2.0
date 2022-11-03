class Gossip < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy

    validates :title, length: { in: 3..30 }, presence: true
    validates :content, presence: true
end
