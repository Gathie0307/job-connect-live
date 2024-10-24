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

Message.destroy_all

Favourite.destroy_all
JobApplication.destroy_all
Job.destroy_all
User.destroy_all

puts "Creating User"
Employer1 = User.create!(email: "max@gmail.com", password: "123456", employer: true, username:"MaxFreddie01", company_name: "IBM",experience: "3 years", first_name: "Max", last_name: "Freddie", job_experience: "Staff Engineering Manager: IBM (2019 - now)", phone_number: "+44 7202040921", skills: "\n Programming Language: Java, Phython, JavaScript\n Cloud Platform: IBM cloud, AWS\n Devops Tools: Docker, Kubernetes\n Database: SQL, NoSQL\n Soft Skills: Teamwork, problem-solving, adaptablity\n",location:"London, England",education:"Bachelor Of Enginnering- Computer Science")
Employer2 = User.create!(email: "noah@gmail.com", password: "123456", employer: true, username:"Noah Arthur02", company_name: "Google",experience: "4 year",first_name: "Noah", last_name: "Arthur", job_experience: "Talent Acquisition Manager,Google , 2015 - now",phone_number: "+44 72013450921", skills: "\nProgramming Language: Phython, Java, C++, Go\n Cloud Platform: Google Cloud, Kubernetes, Docker\n AI/ML Frameworks: TensorFlow, Pytorch\n Soft Skills: Collaboration, problem-solving, creativity, ability to adapt to fast paced emvironments\n",location:"London England",education:"Bachelor Of Enginnering(Computer Science)")
Employer3 = User.create!(email: "Jack@gmail.com", password: "123456", employer: true, username:"JackConnor03", company_name: "Meta", experience: "5 years", first_name: "Jack", last_name: "Connor",job_experience: "Staff Engineering Manager: Meta (2011 - now)", skills: "Html,Css,JavaScript,SQL,ReactJs, Jira, Git",location:"London",education:"Bachelor Of Enginnering(Computer Science)")
Employer4 = User.create!(email: "charlie@gmail.com", password: "123456", employer: true, username:"CharlieKyle04", company_name: "BASF", experience: "5 years",first_name: "Charlie", last_name: "Kyle", skills: "Html,Css,JavaScript,SQL,ReactJs, Jira, Git",location:"London",education:"Bachelor Of Enginnering(Computer Science)")
Employer5 = User.create!(email: "Thomas@gmail.com", password: "123456", employer: true, username:"ThomasJoe05", company_name: "ARM Holdings", experience: "5 years", skills: "Html,Css,JavaScript,SQL,ReactJs, Jira, Git",location:"London",education:"Bachelor Of Enginnering(Computer Science)")

Employee1 = User.create!(email: "alex@gmail.com", password: "123456", employer: false, username: "Alexoliver89", first_name: "Alex", last_name: "Oliver", job_experience: "Associate Software engineer: Trio Technology(2019 - now)", phone_number: "+44 7202040921", experience: "3 years", skills: "Programming Language: ReactJs, Express JS, NodeJS, Html, CSS, JavaScript, Jira\n Cloud Platform: Amazon web Services\n Devops Tools: Docker, Kubernetes\n Database: SQL, Postgres \n Soft Skills: Teamwork, problem-solving, adaptablity\n",location:"London, England",education:"Bachelor Of Enginnering- Computer Science")
Employee2 = User.create!(email: "sue@gmail.com", password: "123456", employer: false, username: "SueAlbie10", first_name: "Sue", last_name: "Albie", job_experience: "Consultant-IT Engineering, Llyods Banking Group Ltd(2019 - now)", phone_number: "7202040921", experience: "5 years", skills: "Programming Language: Java, Springboot, NodeJS, Html, CSS, JavaScript, Jira\n Cloud Platform: Amazon web Services\n Devops Tools: Docker, Kubernetes\n Database: SQL, Postgres \n Soft Skills: Teamwork, problem-solving, adaptablity\n",location:"Reading, England",education:"Bachelor Of Enginnering-  Information Technology")
Employee3 = User.create!(email: "clair@gmail.com", password: "123456", employer: false, username: "Alex Oliver", first_name: "Alex", last_name: "Oliver", job_experience: "Associate Software engineer,IBM ,2019 - 2021", phone_number: "+44 7202040921")
Employee4 = User.create!(email: "clairee@gmail.com", password: "123456", employer: false, username: "Alex Oliver", first_name: "Alex", last_name: "Oliver", job_experience: "Associate Software engineer,IBM ,2019 - 2021", phone_number: "+447202040921")

# user1 = User.create!(email: "max@gmail.com", password: "123456", employer: true, username:"Max", company_name: "IBM", experience: 5, skills: "Html,Css,JavaScript,SQL,ReactJs, Jira, Git",location:"London",education:"Bachelor Of Enginnering(Computer Science)")
# user2 = User.create!(email: "alex@gmail.com", password: "123456", employer: false)
# user3 = User.create!(email: "sue@gmail.com", password: "123456")
# user4 = User.create!(email: "clair@gmail.com", password: "123456")


puts "Creating job..."
first_job = Job.new(job_title:"Head of Software Development", company_name:"BASF", company_description:"BASF is the world's leading chemical company, offering a wide range of products and solutions to meet the needs of various industries.", company_size:"100-200 Employees", location:"Ludwigshafen, Germany", job_description:"Provide technical support and problem-solving for BASF's IT systems and infrastructure. Maintain and troubleshoot network, server, and application environments. Implement and support IT security measures to protect sensitive data. Collaborate with cross-functional teams to deliver efficient and effective IT solutions. Stay updated on emerging technologies and industry best practices.", salary: "£40,000 - 60,000", user_id: Employer4.id, job_nature: "full-time", vacancy: "3", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential", application_deadline: "11-02-2025")
file = File.open("app/assets/images/basf.png")
first_job.photo.attach(io: file, filename: "basf.png", content_type: "image/png")
first_job.save!

second_job = Job.new(job_title:"Staff IT Project Manager", company_name:"ARM Holdings", company_description:"ARM Holdings is a prominent IT company from the UK. It designs and licenses semiconductor IP, including the widely used ARM architecture, which is used in a vast majority of smartphones and tablets worldwide.", company_size:"100-200K Employees", location:"Cambridge, England", job_description:"Arm Holdings is seeking an experienced IT Project Manager to lead and coordinate complex IT projects, ensuring successful delivery within budget and timeline while meeting project objectives and adhering to quality standards.", salary:"£25,000 - 30,000", user_id:Employer5.id, job_nature: "part-time", vacancy: "3", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential", application_deadline: "20-01-2025" )
file = File.open("app/assets/images/arm.png")
second_job.photo.attach(io: file, filename: "arm.png", content_type: "image/png")
second_job.save!

third_job = Job.new(job_title:"Full Stack Web Developer", company_name:"IBM", company_description:"IBM is a global technology company that provides hardware, software, cloud-based services, and artificial intelligence solutions.", company_size:"300-500 Employees", location:"Cambridge, England", job_description:"IBM is seeking a Full Stack Web Developer to join our team. The ideal candidate will have a strong foundation in front-end and back-end development, as well as experience with cloud-based technologies and Agile methodologies.", salary:"£70,000 - 90,000", user_id:Employer1.id, job_nature: "full-time", vacancy: "4", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential", application_deadline: "15-12-2024" )
file = File.open("app/assets/images/ibm.png")
third_job.photo.attach(io: file, filename: "ibm.png", content_type: "image/png")
third_job.save!

fourth_job = Job.new(job_title:"Front End Web Developer", company_name:"Google", company_description:"Google is a multinational technology company that primarily focuses on online advertising, search engine technology, cloud computing, and artificial intelligence.", company_size:"1k-3k Employees", location:"California, USA", job_description:"Google is seeking a talented Front-end Developer to join our team. The ideal candidate will have a strong understanding of HTML, CSS, and JavaScript, as well as experience with modern front-end frameworks and libraries. You will be responsible for creating intuitive and visually appealing user interfaces that contribute to our mission of organizing the world's information and making it universally accessible", salary:"£40,000 - 45,000", user_id:Employer2.id, job_nature: "full-time", vacancy: "4", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential", application_deadline: "15-12-2024")
file = File.open("app/assets/images/google.png")
fourth_job.photo.attach(io: file, filename: "google.png", content_type: "image/png")
fourth_job.save!

fifth_job = Job.new(job_title:"Back End Developer", company_name:"Meta", company_description:"Meta (formerly Facebook) is a technology company that specializes in social networking and online communication", company_size:"70k-90k Employees", location:"California, USA", job_description:"Meta is seeking a talented Back-end Engineer to join our team and help build the next generation of social networking platforms. As a Back-end Engineer, you will be responsible for designing, developing, and maintaining scalable and reliable systems that power our billions of users. You will work closely with a team of talented engineers to build innovative solutions that solve complex problems at scale.", salary:"£45,000 - 55,000", user_id:Employer3.id, job_nature: "full-time", vacancy: "4", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential", application_deadline: "15-12-2024")
file = File.open("app/assets/images/meta.png")
fifth_job.photo.attach(io: file, filename: "meta.png", content_type: "image/png")
fifth_job.save!

sixth_job = Job.new(job_title:"UX/UI Designer", company_name:"BASF", company_description:"BASF is the world's leading chemical company, offering a wide range of products and solutions to meet the needs of various industries.", company_size:"50-100 Employees", location:"Ludwigshafen, Germany", job_description:"Provide technical support and problem-solving for BASF's IT systems and infrastructure. Maintain and troubleshoot network, server, and application environments. Implement and support IT security measures to protect sensitive data. Collaborate with cross-functional teams to deliver efficient and effective IT solutions. Stay updated on emerging technologies and industry best practices.", salary:"£50,000 - 60,000" , user_id:Employer4.id, job_nature: "part-time", vacancy: "4", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential", application_deadline: "15-12-2024")
file = File.open("app/assets/images/basf.png")
sixth_job.photo.attach(io: file, filename: "basf.png", content_type: "image/png")
sixth_job.save!

job7 = Job.new(job_title:"IT Project Manager", company_name:"ARM Holdings", company_description:"ARM Holdings is a prominent IT company from the UK. It designs and licenses semiconductor IP, including the widely used ARM architecture, which is used in a vast majority of smartphones and tablets worldwide.", company_size:"100-200 Employees", location:"Cambridge, England", job_description:"Arm Holdings is seeking an experienced IT Project Manager to lead and coordinate complex IT projects, ensuring successful delivery within budget and timeline while meeting project objectives and adhering to quality standards.", salary:"£50,000 - 80,000", user_id:Employer5.id, job_nature: "part-time", vacancy: "4", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential", application_deadline: "15-12-2024")
file = File.open("app/assets/images/arm.png")
job7.photo.attach(io: file, filename: "arm.png", content_type: "image/png")
job7.save!


job8 = Job.new(job_title:"Back-end", company_name:"IBM", company_description:"IBM is a global technology company that provides hardware, software, cloud-based services, and artificial intelligence solutions.", company_size:"300-500 Employees", location:"Cambridge, England", job_description:"IBM is seeking a Full Stack Web Developer to join our team. The ideal candidate will have a strong foundation in front-end and back-end development, as well as experience with cloud-based technologies and Agile methodologies.", salary:"£70,000 - 90,000", user_id:Employer1.id, job_nature: "full-time", vacancy: "4", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential", application_deadline: "15-12-2024")
file = File.open("app/assets/images/ibm.png")
job8.photo.attach(io: file, filename: "ibm.png", content_type: "image/png")
job8.save!

job9 = Job.new(job_title:"IT Project Manager", company_name:"Google", company_description:"Google is a multinational technology company that primarily focuses on online advertising, search engine technology, cloud computing, and artificial intelligence.", company_size:"1k-3k Employees", location:"California, USA", job_description:"Google is seeking a talented Front-end Developer to join our team. The ideal candidate will have a strong understanding of HTML, CSS, and JavaScript, as well as experience with modern front-end frameworks and libraries. You will be responsible for creating intuitive and visually appealing user interfaces that contribute to our mission of organizing the world's information and making it universally accessible", salary:"£40,000 - 67,000", user_id:Employer2.id, job_nature: "full-time", vacancy: "4", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential", application_deadline: "15-12-2024")
file = File.open("app/assets/images/google.png")
job9.photo.attach(io: file, filename: "google.png", content_type: "image/png")
job9.save!

job10 = Job.new(job_title:"IT Project Manager", company_name:"Meta", company_description:"Meta (formerly Facebook) is a technology company that specializes in social networking and online communication", company_size:"70k-90k Employees", location:"California, USA", job_description:"Meta is seeking a talented Back-end Engineer to join our team and help build the next generation of social networking platforms. As a Back-end Engineer, you will be responsible for designing, developing, and maintaining scalable and reliable systems that power our billions of users. You will work closely with a team of talented engineers to build innovative solutions that solve complex problems at scale.", salary:"£45,000 - 58,000", user_id:Employer3.id, job_nature: "full-time", vacancy: "4", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential", application_deadline: "15-12-2024")
file = File.open("app/assets/images/meta.png")
job10.photo.attach(io: file, filename: "meta.png", content_type: "image/png")
job10.save!

# job11 = Job.new(job_title:"IT Specialist", company_name:"BASF", company_description:"BASF is the world's leading chemical company, offering a wide range of products and solutions to meet the needs of various industries.", company_size:”100-200 Employees", location:"Ludwigshafen, Germany", job_description:"Provide technical support and problem-solving for BASF's IT systems and infrastructure. Maintain and troubleshoot network, server, and application environments. Implement and support IT security measures to protect sensitive data. Collaborate with cross-functional teams to deliver efficient and effective IT solutions. Stay updated on emerging technologies and industry best practices.", salary: “£ 35,000 - 45,000”, user_id:Employer4.id, job_nature: “part-time", vacancy: "4", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential”, application_deadline: "15-12-2024")
# file = File.open("app/assets/images/basf.png")
# job11.photo.attach(io: file, filename: "basf.png", content_type: "image/png")
# job11.save!

# job12 = Job.new(job_title:"IT Project Manager", company_name:"ARM Holdings", company_description:"ARM Holdings is a prominent IT company from the UK. It designs and licenses semiconductor IP, including the widely used ARM architecture, which is used in a vast majority of smartphones and tablets worldwide.", company_size:"100-200K Employees”, location:"Cambridge, England", job_description:"Arm Holdings is seeking an experienced IT Project Manager to lead and coordinate complex IT projects, ensuring successful delivery within budget and timeline while meeting project objectives and adhering to quality standards.", salary:”£ 50,000 - 60,000”, user_id:Employer5.id, job_nature: "full-time", vacancy: "4", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential”, application_deadline: "15-12-2024")
# file = File.open("app/assets/images/arm.png")
# job12.photo.attach(io: file, filename: "arm.png", content_type: "image/png")
# job12.save!

# job13 = Job.new(job_title:"Full Stack Web Developer", company_name:"IBM", company_description:"IBM is a global technology company that provides hardware, software, cloud-based services, and artificial intelligence solutions.", company_size:”300-500 Employees”, location:"Cambridge, England", job_description:"IBM is seeking a Full Stack Web Developer to join our team. The ideal candidate will have a strong foundation in front-end and back-end development, as well as experience with cloud-based technologies and Agile methodologies.", salary:70.345, user_id:Employer2.id, job_nature: "full-time", vacancy: "4", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential”, application_deadline: "15-12-2024")
# file = File.open("app/assets/images/ibm.png")
# job13.photo.attach(io: file, filename: "ibm.png", content_type: "image/png")
# job13.save!

# job14 = Job.new(job_title:"Full Stack Web Developer", company_name:"Google", company_description:"Google is a multinational technology company that primarily focuses on online advertising, search engine technology, cloud computing, and artificial intelligence.", company_size:”1k-3k Employees”, location:"California, USA", job_description:"Google is seeking a talented Front-end Developer to join our team. The ideal candidate will have a strong understanding of HTML, CSS, and JavaScript, as well as experience with modern front-end frameworks and libraries. You will be responsible for creating intuitive and visually appealing user interfaces that contribute to our mission of organizing the world's information and making it universally accessible", salary:”£ 42,000 - 45,000”, user_id:Employer1 .id, job_nature: "full-time", vacancy: "4", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential”, application_deadline: "15-12-2024")
# file = File.open("app/assets/images/google.png")
# job14.photo.attach(io: file, filename: "google.png", content_type: "image/png")
# job14.save!

# job15 = Job.new(job_title:"Full Stack Web Developer", company_name:"Meta", company_description:"Meta (formerly Facebook) is a technology company that specializes in social networking and online communication", company_size:”70k-90k Employees”, location:"California, USA", job_description:"Meta is seeking a talented Back-end Engineer to join our team and help build the next generation of social networking platforms. As a Back-end Engineer, you will be responsible for designing, developing, and maintaining scalable and reliable systems that power our billions of users. You will work closely with a team of talented engineers to build innovative solutions that solve complex problems at scale.", salary:”£ 40,000 - 50,000”, user_id:Employer3.id, job_nature: “part-time", vacancy: "4", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential”, application_deadline: "15-12-2024")
# file = File.open("app/assets/images/meta.png")
# job15.photo.attach(io: file, filename: "meta.png", content_type: "image/png")
# job15.save!

# job16 = Job.new(job_title:"Full Stack Web Developer", company_name:"BASF", company_description:"BASF is the world's leading chemical company, offering a wide range of products and solutions to meet the needs of various industries.", company_size:”100-200 Employees", location:"Ludwigshafen, Germany", job_description:"Provide technical support and problem-solving for BASF's IT systems and infrastructure. Maintain and troubleshoot network, server, and application environments. Implement and support IT security measures to protect sensitive data. Collaborate with cross-functional teams to deliver efficient and effective IT solutions. Stay updated on emerging technologies and industry best practices.", salary:”£ 45,000 - 57,000”, user_id:Employer4.id, job_nature: "full-time", vacancy: "4", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential”, application_deadline: "15-12-2024")
# file = File.open("app/assets/images/basf.png")
# job16.photo.attach(io: file, filename: "basf.png", content_type: "image/png")
# job16.save!

# job17 = Job.new(job_title:"IT Project Manager", company_name:"ARM Holdings", company_description:"ARM Holdings is a prominent IT company from the UK. It designs and licenses semiconductor IP, including the widely used ARM architecture, which is used in a vast majority of smartphones and tablets worldwide.", company_size:"100-200K Employees”,, location:"Cambridge, England", job_description:"Arm Holdings is seeking an experienced IT Project Manager to lead and coordinate complex IT projects, ensuring successful delivery within budget and timeline while meeting project objectives and adhering to quality standards.", salary: “£ 30,000 - 45,000” user_id:Employer5.id, job_nature: "full-time", vacancy: "4", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential”, application_deadline: "15-12-2024")
# file = File.open("app/assets/images/arm.png")
# job17.photo.attach(io: file, filename: "arm.png", content_type: "image/png")
# job17.save!

# job18 = Job.new(job_title:"Back-end", company_name:"IBM", company_description:"IBM is a global technology company that provides hardware, software, cloud-based services, and artificial intelligence solutions.", company_size:”300-500 Employees”, location:"Cambridge, England", job_description:"IBM is seeking a Full Stack Web Developer to join our team. The ideal candidate will have a strong foundation in front-end and back-end development, as well as experience with cloud-based technologies and Agile methodologies.", salary:”£ 70,000 - 90,000”, user_id:Employer2.id, job_nature: "full-time", vacancy: "4", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential”, application_deadline: "15-12-2024")
# file = File.open("app/assets/images/ibm.png")
# job18.photo.attach(io: file, filename: "ibm.png", content_type: "image/png")
# job18.save!

# job19 = Job.new(job_title:"Front-end", company_name:"Google", company_description:"Google is a multinational technology company that primarily focuses on online advertising, search engine technology, cloud computing, and artificial intelligence.", company_size:”1k-3k Employees”, location:"California, USA", job_description:"Google is seeking a talented Front-end Developer to join our team. The ideal candidate will have a strong understanding of HTML, CSS, and JavaScript, as well as experience with modern front-end frameworks and libraries. You will be responsible for creating intuitive and visually appealing user interfaces that contribute to our mission of organizing the world's information and making it universally accessible", salary:”£ 42,000 - 46,000”, user_id:Employer1 .id, job_nature: "full-time", vacancy: "4", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential”, application_deadline: "15-12-2024")
# file = File.open("app/assets/images/google.png")
# job19.photo.attach(io: file, filename: "google.png", content_type: "image/png")
# job19.save!

# job20 = Job.new(job_title:"Back-end", company_name:"Meta", company_description:"Meta (formerly Facebook) is a technology company that specializes in social networking and online communication", company_size:””70k-90k Employees”, location:"California, USA", job_description:"Meta is seeking a talented Back-end Engineer to join our team and help build the next generation of social networking platforms. As a Back-end Engineer, you will be responsible for designing, developing, and maintaining scalable and reliable systems that power our billions of users. You will work closely with a team of talented engineers to build innovative solutions that solve complex problems at scale.", salary: ”£35,000 - 45,000”, user_id:Employer3.id, job_nature: “part-time", vacancy: "4", job_responsibility:"Own front-end development of a number of features both on the web application and mobile (React Native) (e.g., integrate AI recommendations into user chat, develop hospitalization tool for large hospital clients, etc. \n Partner with the CTO and Engineering Director in prioritise and develop new features \n Support the full stack implementation of your features \n Collaborate with sales team to launch new features", benefits: "Flexible remote work options and/or a fun office environment\nRegular team activities and high-quality equipment\n Opportunities for learning, personal growth, and career advancement \nCompetitive salary, benefits, and bonus potential”, application_deadline: “10-12-2024")
# file = File.open("app/assets/images/meta.png")
# job20.photo.attach(io: file, filename: "meta.png", content_type: "image/png")
# job20.save!


puts "Creating applications"

# application1 = JobApplication.create!(status:"pending", interview_outcome: "in Progress", interview_completion:"false", interview_date: "25/10/2024", user: Employee1 , job_id: first_job.id)
application2 = JobApplication.create!(status: "confirmed", interview_outcome:"complete", interview_completion:"true", interview_date: "10/11/2024", user: Employee1 , job_id: fourth_job.id)
application3 = JobApplication.create!(status: "pending", interview_outcome: "in Progress", interview_completion:"false", interview_date: "", user: Employee1, job_id: fourth_job.id)
application4 = JobApplication.create!(status: "confirmed", interview_outcome: "complete", interview_completion:"true", interview_date: "29/10/2024", user: Employee1, job_id: second_job.id)
# application1 = JobApplication.create!(status:"pending", interview_outcome: "in Progress", interview_completion:"false", interview_date: "30/11/2024", user: Employee1, job_id: third_job.id)
# application2 = JobApplication.create!(status:"confirmed", interview_outcome: "complete", interview_completion:"true", interview_date: "09/11/2024", user: Employee2, job_id: job7.id)
# application3 = JobApplication.create!(status:"pending", interview_outcome: "in Progress", interview_completion:"false", interview_date: "13/12/2024", user: Employee1, job_id: job5.id)
# application4 = JobApplication.create!(status:"confirmed", interview_outcome: "complete", interview_completion:"true", interview_date: "18/11/2024", user: Employee1, job_id: job4.id)


puts "Seed created! #{User.all.count} users created & #{Job.all.count} jobs created & #{JobApplication.all.count} applications created"
