class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :category_0_id, :integer
    add_column :users, :category_1_id, :integer
    add_column :users, :category_2_id, :integer

    add_column :users, :answer_0_id, :integer
    add_column :users, :answer_1_id, :integer
    add_column :users, :answer_2_id, :integer
    add_column :users, :answer_3_id, :integer
    add_column :users, :answer_4_id, :integer
    add_column :users, :answer_5_id, :integer
    add_column :users, :answer_6_id, :integer
    add_column :users, :answer_7_id, :integer
    add_column :users, :answer_8_id, :integer
    add_column :users, :answer_9_id, :integer

    # has_many :categories, :class_name => 'Category', :foreign_key => 'category_id_0'
    # has_many :categories, :class_name => 'Category', :foreign_key => 'category_id_1'
    # has_many :categories, :class_name => 'Category', :foreign_key => 'category_id_2'
    #
    # has_many :questions0, :class_name => 'Question', :foreign_key => 'question_id_0'
    # has_many :questions1, :class_name => 'Question', :foreign_key => 'question_id_1'
    # has_many :questions2, :class_name => 'Question', :foreign_key => 'question_id_2'
    # has_many :questions3, :class_name => 'Question', :foreign_key => 'question_id_3'
    # has_many :questions4, :class_name => 'Question', :foreign_key => 'question_id_4'
    # has_many :questions5, :class_name => 'Question', :foreign_key => 'question_id_5'
    # has_many :questions6, :class_name => 'Question', :foreign_key => 'question_id_6'
    # has_many :questions7, :class_name => 'Question', :foreign_key => 'question_id_7'
    # has_many :questions8, :class_name => 'Question', :foreign_key => 'question_id_8'
    # has_many :questions9, :class_name => 'Question', :foreign_key => 'question_id_9'

  end
end

# class Category < ActiveRecord::Base
#   belongs_to :user_0, :class_name => "User"
#   belongs_to :user_1, :class_name => "User"
#   belongs_to :user_2, :class_name => "User"
# end
#
# class User < ActiveRecord::Base
#   has_many :first_category, :class_name => "Category", :foreign_key => "category_0_id"
#   has_many :second_category, :class_name => "Category", :foreign_key => "category_1_id"
#   has_many :third_category, :class_name => "Category", :foreign_key => "category_2_id"
# end
#
#
#
# class Answer < ActiveRecord::Base
#   belongs_to :user_0, :class_name => "User"
#   belongs_to :user_1, :class_name => "User"
#   belongs_to :user_2, :class_name => "User"
#   belongs_to :user_3, :class_name => "User"
#   belongs_to :user_4, :class_name => "User"
#   belongs_to :user_5, :class_name => "User"
#   belongs_to :user_6, :class_name => "User"
#   belongs_to :user_7, :class_name => "User"
#   belongs_to :user_8, :class_name => "User"
#   belongs_to :user_9, :class_name => "User"
# end
#
# class User < ActiveRecord::Base
#   has_many :first_answer, :class_name => "Answer", :foreign_key => "answer_0_id"
#   has_many :second_answer, :class_name => "Answer", :foreign_key => "answer_1_id"
#   has_many :third_answer, :class_name => "Answer", :foreign_key => "answer_2_id"
#   has_many :fourth_answer, :class_name => "Answer", :foreign_key => "answer_3_id"
#   has_many :fifth_answer, :class_name => "Answer", :foreign_key => "answer_4_id"
#   has_many :sixth_answer, :class_name => "Answer", :foreign_key => "answer_5_id"
#   has_many :seventh_answer, :class_name => "Answer", :foreign_key => "answer_6_id"
#   has_many :eighth_answer, :class_name => "Answer", :foreign_key => "answer_7_id"
#   has_many :ninth_answer, :class_name => "Answer", :foreign_key => "answer_8_id"
#   has_many :tenth_answer, :class_name => "Answer", :foreign_key => "answer_9_id"
#
# end
