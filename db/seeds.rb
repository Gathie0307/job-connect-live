# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning db"
JobApplication.destroy_all
Job.destroy_all
User.destroy_all



user1 = User.create!(email: "max@gmail.com", password: "123456")
user2 = User.create!(email: "alex@gmail.com", password: "123456")

puts "Creating job..."
first_job = Job.new(job_title:"Specialist", company_name:"Cool", company_description:"Cool", company_size:100, location:"Manchester", job_description:"Great", salary:100.00, user_id:user1.id)
first_job.save!

second_job = Job.new(job_title:"Manager", company_name:"Fine", company_description:"Fine", company_size:10, location:"Edinburgh", job_description:"Fine", salary:50.00, user_id:user2.id)
second_job.save!

puts "Creating applications"

application1 = JobApplication.create!(status:"pending", interview_outcome: "in Progress", interview_completion:"false", interview_date: "20/10/2024", user_id: user1.id, job_id: first_job.id)
application2 = JobApplication.create!(status:"confirmed", interview_outcome: "complete", interview_completion:"true", interview_date: "10/10/2024", user_id: user1.id, job_id: second_job.id)

puts "Seed created! #{User.all.count} users created & #{Job.all.count} jobs created & #{JobApplication.all.count} applications created"
