class CreateStuffToDos < ActiveRecord::Migration
  def self.up
    unless table_exists? :stuff_to_dos
      create_table :stuff_to_dos do |t|
        t.column :user_id, :integer
        t.column :position, :integer
        t.column :stuff_id, :integer
        t.column :stuff_type, :string
      end

      add_index :stuff_to_dos, :user_id
      add_index :stuff_to_dos, :stuff_id
      add_index :stuff_to_dos, :stuff_type
    end
  end
  
  def self.down
    if table_exists? :stuff_to_dos
      remove_index :stuff_to_dos, :user_id
      remove_index :stuff_to_dos, :stuff_id
      remove_index :stuff_to_dos, :stuff_type

      drop_table :stuff_to_dos
    end
  end
end
