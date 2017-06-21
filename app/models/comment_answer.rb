# == Schema Information
#
# Table name: comment_answers
#
#  id         :integer          not null, primary key
#  body       :string
#  answer_id  :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CommentAnswer < ApplicationRecord
	validates :body, :presence => true
	
  belongs_to :answer
  belongs_to :user
end
