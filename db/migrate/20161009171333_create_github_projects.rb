class CreateGithubProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :github_projects do |t|
      t.string :name
      t.string :url
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
