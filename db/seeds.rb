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
user3 = User.create!(email: "sue@gmail.com", password: "123456")
user4 = User.create!(email: "clair@gmail.com", password: "123456")

puts 'Finished!'
puts "Creating job..."
job1 = Job.create!(job_title:"Software Engineer", company_name:"Apexon", company_description:"Apexon is a digital-first technology services firm specializing in accelerating business transformation and delivering human-centric digital experiences. For over 27 years, Apexon has been meeting customers wherever they are in the digital lifecycle and helping them outperform their competition through speed and innovation. Our reputation is built on a comprehensive suite of engineering services, a dedication to solving our clients’ toughest technology problems, and a commitment to continuous improvement. We focus on three broad areas of digital services: User Experience (UI/UX, Commerce); Engineering (QE/Automation, Cloud, Product/Platform); and Data (Foundation, Analytics, and AI/ML), and have deep expertise in BFSI, healthcare, and life sciences", company_size:"5K-10K employees", location:"Santa Clara, California", job_description:"Apexon is a pure-play digital engineering services firm focused on helping companies accelerate their digital initiatives from strategy and planning through execution. We leverage deep technical expertise, Agile methodologies and data-driven intelligence to modernize systems of engagement and simplify human/tech interaction. We deliver custom solutions that meet customers’ technology needs wherever they are in their digital lifecycle. Backed by Goldman Sachs and Everstone Capital, Apexon works with both large enterprises and emerging innovators -- putting digital to work to enable new products and business models, engage with customers in new ways, and create sustainable competitive differentiation. We are currently looking to hire Graduate Software Engineers to join our expanding team in Birmingham. Our people are our biggest asset and we recognize that our success depends on their talent, motivation and expertise. Apexon employs high caliber individuals and emphasizes the importance of collaboration and growing both professionally and personally", salary:58.222, user_id:user1.id, image_url:"https://media.licdn.com/dms/image/v2/C560BAQHehBd-C9n-AQ/company-logo_100_100/company-logo_100_100/0/1658434447598/apexon_logo?e=1737590400&v=beta&t=mYgKOq5vRtWunW4xsHfs0JTVb9336-fhAZCrd9n8H9k")
job2 = Job.create!(job_title:"Software Engineer", company_name:"Apexon", company_description:"Apexon is a digital-first technology services firm specializing in accelerating business transformation and delivering human-centric digital experiences. For over 27 years, Apexon has been meeting customers wherever they are in the digital lifecycle and helping them outperform their competition through speed and innovation. Our reputation is built on a comprehensive suite of engineering services, a dedication to solving our clients’ toughest technology problems, and a commitment to continuous improvement. We focus on three broad areas of digital services: User Experience (UI/UX, Commerce); Engineering (QE/Automation, Cloud, Product/Platform); and Data (Foundation, Analytics, and AI/ML), and have deep expertise in BFSI, healthcare, and life sciences", company_size:"5K-10K employees", location:"Santa Clara, California", job_description:"Apexon is a pure-play digital engineering services firm focused on helping companies accelerate their digital initiatives from strategy and planning through execution. We leverage deep technical expertise, Agile methodologies and data-driven intelligence to modernize systems of engagement and simplify human/tech interaction. We deliver custom solutions that meet customers’ technology needs wherever they are in their digital lifecycle. Backed by Goldman Sachs and Everstone Capital, Apexon works with both large enterprises and emerging innovators -- putting digital to work to enable new products and business models, engage with customers in new ways, and create sustainable competitive differentiation. We are currently looking to hire Graduate Software Engineers to join our expanding team in Birmingham. Our people are our biggest asset and we recognize that our success depends on their talent, motivation and expertise. Apexon employs high caliber individuals and emphasizes the importance of collaboration and growing both professionally and personally", salary:58.222, user_id:user1.id, image_url:"https://media.licdn.com/dms/image/v2/C560BAQHehBd-C9n-AQ/company-logo_100_100/company-logo_100_100/0/1658434447598/apexon_logo?e=1737590400&v=beta&t=mYgKOq5vRtWunW4xsHfs0JTVb9336-fhAZCrd9n8H9k")

puts "Creating applications"

application1 = JobApplication.create!(status:"pending", interview_outcome: "in Progress", interview_completion:"false", interview_date: "20/10/2024", user: user1, job_id: job1)
application2 = JobApplication.create!(status:"confirmed", interview_outcome: "complete", interview_completion:"true", interview_date: "10/10/2024", user: user1, job_id: job2)
application3 = JobApplication.create!(status:"pending", interview_outcome: "in Progress", interview_completion:"false", interview_date: "20/10/2024", user: user3, job_id: job1)
application4 = JobApplication.create!(status:"confirmed", interview_outcome: "complete", interview_completion:"true", interview_date: "10/10/2024", user: user4, job_id: job2)
application1 = JobApplication.create!(status:"pending", interview_outcome: "in Progress", interview_completion:"false", interview_date: "20/10/2024", user: user1, job_id: job1)


puts "Seed created! #{User.all.count} users created & #{Job.all.count} jobs created & #{JobApplication.all.count} applications created"
