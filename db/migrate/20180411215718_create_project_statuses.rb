class CreateProjectStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :project_statuses do |t|
      t.references :project, foreign_key: true
      t.references :status, foreign_key: true

      t.timestamps
    end
  end
end
