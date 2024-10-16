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
second_job = Job.new(job_title:"Web Developer", company_name:"IBM", company_description:"IBM is an amazing company to work for. They started in the 70's and they have beein involved in absolutely everything we use today!", company_size:305.300, location:"USA", job_description:"We are looking for a Full Stack Web Developer from Le Wagon", salary:150.00, user_id:user1.id)
second_job.save!
second_job = Job.new(job_title:"Frontend", company_name:"Google", company_description:"Google is a multinational technology company that primarily focuses on online advertising, search engine technology, cloud computing, and artificial intelligence ", company_size:179,582, location:"USA", job_description:"Front-end position available. Candidates should have proficiency in HTML, CSS, and JavaScript", salary:90.00, user_id:user2.id)
second_job.save!
second_job = Job.new(job_title:"Backend", company_name:"Meta", company_description:"Meta (formerly Facebook) is a technology company that specializes in social networking and online communication", company_size:70,799, location:"USA", job_description:"Fine", salary:50.00, user_id:user1.id)
second_job.save!



puts "Creating applications"

application1 = JobApplication.create!(status:"pending", interview_outcome: "in Progress", interview_completion:"false", interview_date: "20/10/2024", user_id: user1.id, job_id: first_job.id)
application2 = JobApplication.create!(status:"confirmed", interview_outcome: "complete", interview_completion:"true", interview_date: "10/10/2024", user_id: user1.id, job_id: second_job.id)
application3 = JobApplication.create!(status:"pending", interview_outcome: "in Progress", interview_completion:"false", interview_date: "20/10/2024", user_id: user2.id, job_id: first_job.id)
application4 = JobApplication.create!(status:"confirmed", interview_outcome: "complete", interview_completion:"true", interview_date: "10/10/2024", user_id: user2.id, job_id: second_job.id)


puts "Seed created! #{User.all.count} users created & #{Job.all.count} jobs created & #{JobApplication.all.count} applications created"
