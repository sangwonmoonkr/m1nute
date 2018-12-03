class Question < ApplicationRecord
  belongs_to :category
  belongs_to :question_type
  has_many :answer

end
