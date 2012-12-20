class CreateTimeGridIssuesUsers < ActiveRecord::Migration
  def self.up
    unless table_exists? :time_grid_issues_users
      create_table :time_grid_issues_users do |t|
        t.column :issue_id, :integer
        t.column :user_id, :integer
      end

      add_index :time_grid_issues_users, :issue_id
      add_index :time_grid_issues_users, :user_id
    end
  end
  
  def self.down
    if table_exists? :time_grid_issues_users
      remove_index :time_grid_issues_users, :issue_id
      remove_index :time_grid_issues_users, :user_id

      drop_table :time_grid_issues_users
    end
  end
end
