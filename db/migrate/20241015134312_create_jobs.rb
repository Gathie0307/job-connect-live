class CreateJobs < ActiveRecord::Migration[7.2]
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.string :company_name
      t.string :company_description
      t.integer :company_size
      t.string :location
      t.string :job_description
      t.decimal :salary
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
