# == Schema Information
#
# Table name: comment_questions
#
#  id          :integer          not null, primary key
#  body        :string
#  question_id :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CommentQuestion < ApplicationRecord
	validates :body, :presence => true
	
  belongs_to :question
  belongs_to :user
end
