class Response < ApplicationRecord
    validate :not_duplicate_response, unless: -> { self.answer_choice.nil? }
    validate :not_response_by_author, unless: -> { self.answer_choice.nil? }

    belongs_to :answer_choice
    belongs_to :respondent, class_name: :User, foreign_key: :user_id
    has_one :question, through: :answer_choice
    has_one :poll, through: :question

    def sibling_responses
        self.question.responses.where.not(id: self.id)
    end

    def respondent_already_answered?
        self.sibling_responses.where(user_id: self.respondent).count > 0
    end

    def respondent_is_author?
        self.respondent == self.poll.author
    end

    def not_duplicate_response
        if self.respondent_already_answered?
            errors[:base] << "You already answered this question"
        end
    end

    def not_response_by_author
        if self.respondent_is_author?
            errors[:base] << "You can't answer questions in a poll you created"
        end
    end
end
