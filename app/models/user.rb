class User < ApplicationRecord

  enum gender: {"center":1, "female":2, "male": 3}

  has_many :first_category, :class_name => "Category", :foreign_key => "category_0_id"
  has_many :second_category, :class_name => "Category", :foreign_key => "category_1_id"
  has_many :third_category, :class_name => "Category", :foreign_key => "category_2_id"

  has_many :first_answer, :class_name => "Answer", :foreign_key => "answer_0_id"
  has_many :second_answer, :class_name => "Answer", :foreign_key => "answer_1_id"
  has_many :third_answer, :class_name => "Answer", :foreign_key => "answer_2_id"
  has_many :fourth_answer, :class_name => "Answer", :foreign_key => "answer_3_id"
  has_many :fifth_answer, :class_name => "Answer", :foreign_key => "answer_4_id"
  has_many :sixth_answer, :class_name => "Answer", :foreign_key => "answer_5_id"
  has_many :seventh_answer, :class_name => "Answer", :foreign_key => "answer_6_id"
  has_many :eighth_answer, :class_name => "Answer", :foreign_key => "answer_7_id"
  has_many :ninth_answer, :class_name => "Answer", :foreign_key => "answer_8_id"
  has_many :tenth_answer, :class_name => "Answer", :foreign_key => "answer_9_id"

end
