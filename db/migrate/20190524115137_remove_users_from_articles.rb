class RemoveUsersFromArticles < ActiveRecord::Migration[5.2]
  def change
    remove_reference :articles, :user_id, foreign_key: true
  end
end
