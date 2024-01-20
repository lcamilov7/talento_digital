class RemoveCommentFromClient < ActiveRecord::Migration[7.1]
  def change
    remove_column :clients, :comment, :text
  end
end
