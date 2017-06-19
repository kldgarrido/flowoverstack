class CreateCommentAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :comment_answers do |t|
      t.string :body
      t.references :answer, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
