class Response < ApplicationRecord
    validate :not_duplicate_response

    belongs_to :answer_choice
    belongs_to :respondent, class_name: :User, foreign_key: :user_id
    has_one :question, through: :answer_choice

    def sibling_responses
        self.question.responses.where.not(id: self.id)
    end

    def respondent_already_answered?
        self.sibling_responses.where(user_id: self.respondent).count > 0
    end

    def not_duplicate_response
        if self.respondent_already_answered?
            errors[:base] << "You already answered this question"
        end
    end
end