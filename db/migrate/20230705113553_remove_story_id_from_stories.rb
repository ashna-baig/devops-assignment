class RemoveStoryIdFromStories < ActiveRecord::Migration[7.0]
  def change
    remove_column :stories, :story_id, :integer
  end
end
