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

require 'test_helper'

class CommentQuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
