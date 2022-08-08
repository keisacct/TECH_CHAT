class Chat < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true

    has_many :answers
end
