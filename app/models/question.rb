class Question < ApplicationRecord
    validates :text, presence: true

    has_many :answer_choices
    belongs_to :poll
    has_many :responses, through: :answer_choices

    def results
        response_data = Question
            .select('answer_choices.text, COUNT(responses.id) AS counts')
            .left_outer_joins(:responses)
            .where('questions.id = ?', self.id)
            .group('answer_choices.text')

        response_counts = {}
        response_data.each do |answer_choice|
            response_counts[answer_choice.text] = answer_choice.counts
        end

        response_counts
    end
end
