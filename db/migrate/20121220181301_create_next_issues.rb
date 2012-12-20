class CreateNextIssues < ActiveRecord::Migration
  def self.up
    create_table :next_issues do |t|
      t.column :issue_id, :integer
      t.column :user_id, :integer
      t.column :position, :integer
    end unless table_exists? :next_issues
  end
  
  def self.down
    drop_table :next_issues if table_exists? :next_issues
  end
end
