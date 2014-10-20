class AddIndexToFollowerRelation < ActiveRecord::Migration
  def up
    add_index :follower_relations, :cat_id
    add_index :follower_relations, :followed_cat_id
  end

  def down
  	remove_index :follower_relations, :cat_id
  	remove_index :follower_relations, :followed_cat_id
  end
end


