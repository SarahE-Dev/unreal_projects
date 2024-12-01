class CreateProjects < ActiveRecord::Migration[7.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.string :project_url
      t.string :image_url

      t.timestamps
    end
  end
end
