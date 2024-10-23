class CreateJobs < ActiveRecord::Migration[7.2]
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.string :company_name
      t.string :company_description
      t.string :company_size
      t.string :location
      t.string :job_description
      t.string :salary
      t.references :user, null: false, foreign_key: true
      t.string :image_url
      t.string :job_nature
      t.integer :vacancy
      t.string :job_responsibility
      t.string :benefits
      t.date :application_deadline

      t.timestamps
    end
  end
end
