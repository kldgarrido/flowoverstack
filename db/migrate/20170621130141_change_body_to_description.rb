class ChangeBodyToDescription < ActiveRecord::Migration[5.0]
  def change
  	rename_column :questions, :body, :description
  end
end
