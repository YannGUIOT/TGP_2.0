class User < ApplicationRecord
    belongs_to :city
    has_many :gossips, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :likes
end
