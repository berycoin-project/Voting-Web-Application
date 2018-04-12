class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :project_content
      t.string :project_skills
      t.float :project_budget

      t.timestamps
    end
  end
end
