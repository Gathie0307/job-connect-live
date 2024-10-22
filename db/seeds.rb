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
Favourite.destroy_all
JobApplication.destroy_all
Job.destroy_all
User.destroy_all




user1 = User.create!(email: "max@gmail.com", password: "123456", employer: true, username:"Max", company_name: "IBM", experience: 5, skills: "Html,Css,JavaScript,SQL,ReactJs, Jira, Git",location:"London",education:"Bachelor Of Enginnering(Computer Science)")
user2 = User.create!(email: "alex@gmail.com", password: "123456", employer: false)
user3 = User.create!(email: "sue@gmail.com", password: "123456")
user4 = User.create!(email: "clair@gmail.com", password: "123456")

puts "Creating job..."
first_job = Job.new(job_title:"IT Specialist", company_name:"BASF", company_description:"BASF is the world's leading chemical company, offering a wide range of products and solutions to meet the needs of various industries.", company_size:112.132, location:"Ludwigshafen, Germany", job_description:"Provide technical support and problem-solving for BASF's IT systems and infrastructure. Maintain and troubleshoot network, server, and application environments. Implement and support IT security measures to protect sensitive data. Collaborate with cross-functional teams to deliver efficient and effective IT solutions. Stay updated on emerging technologies and industry best practices.", salary:58.222, user_id:user1.id)
file = File.open("app/assets/images/basf.png")
first_job.photo.attach(io: file, filename: "basf.png", content_type: "image/png")
first_job.save!

second_job = Job.new(job_title:"IT Project Manager", company_name:"ARM Holdings", company_description:"ARM Holdings is a prominent IT company from the UK. It designs and licenses semiconductor IP, including the widely used ARM architecture, which is used in a vast majority of smartphones and tablets worldwide.", company_size:31.285, location:"Cambridge, England", job_description:"Arm Holdings is seeking an experienced IT Project Manager to lead and coordinate complex IT projects, ensuring successful delivery within budget and timeline while meeting project objectives and adhering to quality standards.", salary:52.378, user_id:user2.id)
file = File.open("app/assets/images/arm.png")
second_job.photo.attach(io: file, filename: "arm.png", content_type: "image/png")
second_job.save!

third_job = Job.new(job_title:"Full Stack Web Developer", company_name:"IBM", company_description:"IBM is a global technology company that provides hardware, software, cloud-based services, and artificial intelligence solutions.", company_size:305.312, location:"Cambridge, England", job_description:"IBM is seeking a Full Stack Web Developer to join our team. The ideal candidate will have a strong foundation in front-end and back-end development, as well as experience with cloud-based technologies and Agile methodologies.", salary:70.345, user_id:user1.id)
file = File.open("app/assets/images/ibm.png")
third_job.photo.attach(io: file, filename: "ibm.png", content_type: "image/png")
third_job.save!

fourth_job = Job.new(job_title:"Front-end", company_name:"Google", company_description:"Google is a multinational technology company that primarily focuses on online advertising, search engine technology, cloud computing, and artificial intelligence.", company_size:179.582, location:"California, USA", job_description:"Google is seeking a talented Front-end Developer to join our team. The ideal candidate will have a strong understanding of HTML, CSS, and JavaScript, as well as experience with modern front-end frameworks and libraries. You will be responsible for creating intuitive and visually appealing user interfaces that contribute to our mission of organizing the world's information and making it universally accessible", salary:42.529, user_id:user3.id)
file = File.open("app/assets/images/google.png")
fourth_job.photo.attach(io: file, filename: "google.png", content_type: "image/png")
fourth_job.save!

fifth_job = Job.new(job_title:"Back-end", company_name:"Meta", company_description:"Meta (formerly Facebook) is a technology company that specializes in social networking and online communication", company_size:70.799, location:"California, USA", job_description:"Meta is seeking a talented Back-end Engineer to join our team and help build the next generation of social networking platforms. As a Back-end Engineer, you will be responsible for designing, developing, and maintaining scalable and reliable systems that power our billions of users. You will work closely with a team of talented engineers to build innovative solutions that solve complex problems at scale.", salary:55.781, user_id:user4.id)
file = File.open("app/assets/images/meta.png")
fifth_job.photo.attach(io: file, filename: "meta.png", content_type: "image/png")
fifth_job.save!

sixth_job = Job.new(job_title:"UX/UI Specialist", company_name:"BASF", company_description:"BASF is the world's leading chemical company, offering a wide range of products and solutions to meet the needs of various industries.", company_size:112.132, location:"Ludwigshafen, Germany", job_description:"Provide technical support and problem-solving for BASF's IT systems and infrastructure. Maintain and troubleshoot network, server, and application environments. Implement and support IT security measures to protect sensitive data. Collaborate with cross-functional teams to deliver efficient and effective IT solutions. Stay updated on emerging technologies and industry best practices.", salary:58.222, user_id:user1.id)
file = File.open("app/assets/images/basf.png")
sixth_job.photo.attach(io: file, filename: "basf.png", content_type: "image/png")
sixth_job.save!

job7 = Job.new(job_title:"IT Project Manager", company_name:"ARM Holdings", company_description:"ARM Holdings is a prominent IT company from the UK. It designs and licenses semiconductor IP, including the widely used ARM architecture, which is used in a vast majority of smartphones and tablets worldwide.", company_size:31.285, location:"Cambridge, England", job_description:"Arm Holdings is seeking an experienced IT Project Manager to lead and coordinate complex IT projects, ensuring successful delivery within budget and timeline while meeting project objectives and adhering to quality standards.", salary:52.378, user_id:user2.id)
file = File.open("app/assets/images/arm.png")
job7.photo.attach(io: file, filename: "arm.png", content_type: "image/png")
job7.save!

job8 = Job.new(job_title:"Back-end", company_name:"IBM", company_description:"IBM is a global technology company that provides hardware, software, cloud-based services, and artificial intelligence solutions.", company_size:305.312, location:"Cambridge, England", job_description:"IBM is seeking a Full Stack Web Developer to join our team. The ideal candidate will have a strong foundation in front-end and back-end development, as well as experience with cloud-based technologies and Agile methodologies.", salary:70.345, user_id:user1.id)
file = File.open("app/assets/images/ibm.png")
job8.photo.attach(io: file, filename: "ibm.png", content_type: "image/png")
job8.save!

job9 = Job.new(job_title:"IT Project Manager", company_name:"Google", company_description:"Google is a multinational technology company that primarily focuses on online advertising, search engine technology, cloud computing, and artificial intelligence.", company_size:179.582, location:"California, USA", job_description:"Google is seeking a talented Front-end Developer to join our team. The ideal candidate will have a strong understanding of HTML, CSS, and JavaScript, as well as experience with modern front-end frameworks and libraries. You will be responsible for creating intuitive and visually appealing user interfaces that contribute to our mission of organizing the world's information and making it universally accessible", salary:42.529, user_id:user3.id)
file = File.open("app/assets/images/google.png")
job9.photo.attach(io: file, filename: "google.png", content_type: "image/png")
job9.save!

job10 = Job.new(job_title:"IT Project Manager", company_name:"Meta", company_description:"Meta (formerly Facebook) is a technology company that specializes in social networking and online communication", company_size:70.799, location:"California, USA", job_description:"Meta is seeking a talented Back-end Engineer to join our team and help build the next generation of social networking platforms. As a Back-end Engineer, you will be responsible for designing, developing, and maintaining scalable and reliable systems that power our billions of users. You will work closely with a team of talented engineers to build innovative solutions that solve complex problems at scale.", salary:55.781, user_id:user4.id)
file = File.open("app/assets/images/meta.png")
job10.photo.attach(io: file, filename: "meta.png", content_type: "image/png")
job10.save!

job11 = Job.new(job_title:"IT Specialist", company_name:"BASF", company_description:"BASF is the world's leading chemical company, offering a wide range of products and solutions to meet the needs of various industries.", company_size:112.132, location:"Ludwigshafen, Germany", job_description:"Provide technical support and problem-solving for BASF's IT systems and infrastructure. Maintain and troubleshoot network, server, and application environments. Implement and support IT security measures to protect sensitive data. Collaborate with cross-functional teams to deliver efficient and effective IT solutions. Stay updated on emerging technologies and industry best practices.", salary:58.222, user_id:user1.id)
file = File.open("app/assets/images/basf.png")
job11.photo.attach(io: file, filename: "basf.png", content_type: "image/png")
job11.save!

job12 = Job.new(job_title:"IT Project Manager", company_name:"ARM Holdings", company_description:"ARM Holdings is a prominent IT company from the UK. It designs and licenses semiconductor IP, including the widely used ARM architecture, which is used in a vast majority of smartphones and tablets worldwide.", company_size:31.285, location:"Cambridge, England", job_description:"Arm Holdings is seeking an experienced IT Project Manager to lead and coordinate complex IT projects, ensuring successful delivery within budget and timeline while meeting project objectives and adhering to quality standards.", salary:52.378, user_id:user2.id)
file = File.open("app/assets/images/arm.png")
job12.photo.attach(io: file, filename: "arm.png", content_type: "image/png")
job12.save!

job13 = Job.new(job_title:"Full Stack Web Developer", company_name:"IBM", company_description:"IBM is a global technology company that provides hardware, software, cloud-based services, and artificial intelligence solutions.", company_size:305.312, location:"Cambridge, England", job_description:"IBM is seeking a Full Stack Web Developer to join our team. The ideal candidate will have a strong foundation in front-end and back-end development, as well as experience with cloud-based technologies and Agile methodologies.", salary:70.345, user_id:user1.id)
file = File.open("app/assets/images/ibm.png")
job13.photo.attach(io: file, filename: "ibm.png", content_type: "image/png")
job13.save!

job14 = Job.new(job_title:"Full Stack Web Developer", company_name:"Google", company_description:"Google is a multinational technology company that primarily focuses on online advertising, search engine technology, cloud computing, and artificial intelligence.", company_size:179.582, location:"California, USA", job_description:"Google is seeking a talented Front-end Developer to join our team. The ideal candidate will have a strong understanding of HTML, CSS, and JavaScript, as well as experience with modern front-end frameworks and libraries. You will be responsible for creating intuitive and visually appealing user interfaces that contribute to our mission of organizing the world's information and making it universally accessible", salary:42.529, user_id:user3.id)
file = File.open("app/assets/images/google.png")
job14.photo.attach(io: file, filename: "google.png", content_type: "image/png")
job14.save!

job15 = Job.new(job_title:"Full Stack Web Developer", company_name:"Meta", company_description:"Meta (formerly Facebook) is a technology company that specializes in social networking and online communication", company_size:70.799, location:"California, USA", job_description:"Meta is seeking a talented Back-end Engineer to join our team and help build the next generation of social networking platforms. As a Back-end Engineer, you will be responsible for designing, developing, and maintaining scalable and reliable systems that power our billions of users. You will work closely with a team of talented engineers to build innovative solutions that solve complex problems at scale.", salary:55.781, user_id:user4.id)
file = File.open("app/assets/images/meta.png")
job15.photo.attach(io: file, filename: "meta.png", content_type: "image/png")
job15.save!

job16 = Job.new(job_title:"Full Stack Web Developer", company_name:"BASF", company_description:"BASF is the world's leading chemical company, offering a wide range of products and solutions to meet the needs of various industries.", company_size:112.132, location:"Ludwigshafen, Germany", job_description:"Provide technical support and problem-solving for BASF's IT systems and infrastructure. Maintain and troubleshoot network, server, and application environments. Implement and support IT security measures to protect sensitive data. Collaborate with cross-functional teams to deliver efficient and effective IT solutions. Stay updated on emerging technologies and industry best practices.", salary:58.222, user_id:user1.id)
file = File.open("app/assets/images/basf.png")
job16.photo.attach(io: file, filename: "basf.png", content_type: "image/png")
job16.save!

job17 = Job.new(job_title:"IT Project Manager", company_name:"ARM Holdings", company_description:"ARM Holdings is a prominent IT company from the UK. It designs and licenses semiconductor IP, including the widely used ARM architecture, which is used in a vast majority of smartphones and tablets worldwide.", company_size:31.285, location:"Cambridge, England", job_description:"Arm Holdings is seeking an experienced IT Project Manager to lead and coordinate complex IT projects, ensuring successful delivery within budget and timeline while meeting project objectives and adhering to quality standards.", salary:52.378, user_id:user2.id)
file = File.open("app/assets/images/arm.png")
job17.photo.attach(io: file, filename: "arm.png", content_type: "image/png")
job17.save!

job18 = Job.new(job_title:"Back-end", company_name:"IBM", company_description:"IBM is a global technology company that provides hardware, software, cloud-based services, and artificial intelligence solutions.", company_size:305.312, location:"Cambridge, England", job_description:"IBM is seeking a Full Stack Web Developer to join our team. The ideal candidate will have a strong foundation in front-end and back-end development, as well as experience with cloud-based technologies and Agile methodologies.", salary:70.345, user_id:user1.id)
file = File.open("app/assets/images/ibm.png")
job18.photo.attach(io: file, filename: "ibm.png", content_type: "image/png")
job18.save!

job19 = Job.new(job_title:"Front-end", company_name:"Google", company_description:"Google is a multinational technology company that primarily focuses on online advertising, search engine technology, cloud computing, and artificial intelligence.", company_size:179.582, location:"California, USA", job_description:"Google is seeking a talented Front-end Developer to join our team. The ideal candidate will have a strong understanding of HTML, CSS, and JavaScript, as well as experience with modern front-end frameworks and libraries. You will be responsible for creating intuitive and visually appealing user interfaces that contribute to our mission of organizing the world's information and making it universally accessible", salary:42.529, user_id:user3.id)
file = File.open("app/assets/images/google.png")
job19.photo.attach(io: file, filename: "google.png", content_type: "image/png")
job19.save!

job20 = Job.new(job_title:"Back-end", company_name:"Meta", company_description:"Meta (formerly Facebook) is a technology company that specializes in social networking and online communication", company_size:70.799, location:"California, USA", job_description:"Meta is seeking a talented Back-end Engineer to join our team and help build the next generation of social networking platforms. As a Back-end Engineer, you will be responsible for designing, developing, and maintaining scalable and reliable systems that power our billions of users. You will work closely with a team of talented engineers to build innovative solutions that solve complex problems at scale.", salary:55.781, user_id:user4.id)
file = File.open("app/assets/images/meta.png")
job20.photo.attach(io: file, filename: "meta.png", content_type: "image/png")
job20.save!



puts "Creating applications"

application1 = JobApplication.create!(status:"pending", interview_outcome: "in Progress", interview_completion:"false", interview_date: "20/10/2024", user: user1, job_id: first_job.id)
application2 = JobApplication.create!(status:"confirmed", interview_outcome: "complete", interview_completion:"true", interview_date: "10/10/2024", user: user1, job_id: second_job.id)
application3 = JobApplication.create!(status:"pending", interview_outcome: "in Progress", interview_completion:"false", interview_date: "20/10/2024", user: user3, job_id: first_job.id)
application4 = JobApplication.create!(status:"confirmed", interview_outcome: "complete", interview_completion:"true", interview_date: "10/10/2024", user: user4, job_id: second_job.id)
application1 = JobApplication.create!(status:"pending", interview_outcome: "in Progress", interview_completion:"false", interview_date: "20/10/2024", user: user1, job_id: third_job.id)
application2 = JobApplication.create!(status:"confirmed", interview_outcome: "complete", interview_completion:"true", interview_date: "10/10/2024", user: user1, job_id: fourth_job.id)
application3 = JobApplication.create!(status:"pending", interview_outcome: "in Progress", interview_completion:"false", interview_date: "20/10/2024", user: user3, job_id: first_job.id)
application4 = JobApplication.create!(status:"confirmed", interview_outcome: "complete", interview_completion:"true", interview_date: "10/10/2024", user: user4, job_id: second_job.id)


puts "Seed created! #{User.all.count} users created & #{Job.all.count} jobs created & #{JobApplication.all.count} applications created"
