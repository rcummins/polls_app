class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    has_many :authored_polls, class_name: :Poll
    has_many :responses
    has_many :answer_choices, through: :responses
end