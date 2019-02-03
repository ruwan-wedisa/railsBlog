class Post < ApplicationRecord
  #delete comment with post in db dependent
  has_many :comments,dependent: :destroy
  validates :title,presence:true ,length:{minimum:5}
  validates :body,presence:true
end
