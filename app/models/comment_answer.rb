class CommentAnswer < ApplicationRecord
  belongs_to :answer
  belongs_to :user
end
