# == Schema Information
#
# Table name: questions
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Question < ApplicationRecord
	validates :title, :presence => true
	validates :description, :presence => true
	validates :user, :presence => true


	belongs_to :user
	has_many :answers
	has_many :comment_questions
	has_many :vote_questions
end
