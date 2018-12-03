class Category < ApplicationRecord
  has_many :questions

  # belongs_to :user
  # belongs_to :user_0, :class_name => "User"
  # belongs_to :user_1, :class_name => "User"
  # belongs_to :user_2, :class_name => "User"
end
