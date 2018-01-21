class Blog < ApplicationRecord
    validates :title, presence: true
    validates :Content, presence: true
    validates :Content, length: { in: 1..140 }
end
