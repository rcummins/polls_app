class Question < ApplicationRecord
    validates :text, presence: true

    has_many :answer_choices
    belongs_to :poll
    has_many :responses, through: :answer_choices

    def results
        self
            .answer_choices
            .select('answer_choices.text')
            .left_outer_joins(:responses)
            .group('answer_choices.text')
            .count('responses.id')
    end
end
