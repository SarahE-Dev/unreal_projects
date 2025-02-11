class AddUniqueConstraintToProjectUrl < ActiveRecord::Migration[7.2]
  def change
    add_index :projects, :project_url, unique: true
  end
end

