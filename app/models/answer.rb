# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  body        :text
#  question_id :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Answer < ApplicationRecord
	validates :body, :presence => true
	validates :user, :presence => true

	belongs_to :question
	belongs_to :user
	has_many :comment_answers
	has_many :vote_answers
end
