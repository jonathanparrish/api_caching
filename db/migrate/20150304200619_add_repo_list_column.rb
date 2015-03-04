class AddRepoListColumn < ActiveRecord::Migration
  def change
    add_column :profiles, :repository_list, :blob
  end
end
