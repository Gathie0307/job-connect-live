class CreateApplications < ActiveRecord::Migration[7.2]
  def change
    create_table :applications do |t|
      t.string :status
      t.string :interview_outcome
      t.boolean :interview_completion
      t.date :interview_date
      t.references :job, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
