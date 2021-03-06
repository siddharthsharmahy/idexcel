class ChangeUsersLoginLimit < ActiveRecord::Migration
  def self.up
    change_column :users, :login, :string, :limit => nil, :default => '', :null => false
  end

  def self.down
    change_column :users, :login, :string, :limit => 30, :default => '', :null => false
  end
end
