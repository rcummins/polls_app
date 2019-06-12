class Poll < ApplicationRecord
    validates :title, presence: true

    belongs_to :author, class_name: :User, foreign_key: :user_id
    has_many :questions
end