# Compatibiliy class used by migrations
class NextIssue < ActiveRecord::Base
  self.table_name = 'next_issues'
end

class ConvertNextIssuesToStuffToDos < ActiveRecord::Migration
  def self.up
    if table_exists? :next_issues
      NextIssue.all.each do |next_issue|
        StuffToDo.create!({
                            :user_id => next_issue.user_id,
                            :position => next_issue.position,
                            :stuff_id => next_issue.issue_id,
                            :stuff_type => 'Issue'
                          })
      end

      drop_table :next_issues
    end
  end

  def self.down
    if table_exists? :next_issues
      StuffToDo.find_all_by_stuff_type('Issue').each do |stuff_to_do|
        NextIssue.create!({
                            :user_id => stuff_to_do.user_id,
                            :position => stuff_to_do.position,
                            :issue_id => stuff_to_do.stuff_id
                          })
      end
    end
  end
end
