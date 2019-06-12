class Question < ApplicationRecord
    validates :text, presence: true

    has_many :answer_choices
    belongs_to :poll
end