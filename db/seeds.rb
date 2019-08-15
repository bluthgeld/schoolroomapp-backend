# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Carer.destroy_all
Educator.destroy_all
Room.destroy_all
StudentCarer.destroy_all
StudentRoom.destroy_all
EducatorRoom.destroy_all

carer1 = Carer.create(username: "superparent", password: "password1", first_name: "Robert", last_name: "Pancake", phone: "2405551212", email: "rob@thegreatepancake.com", picture: "https://images-na.ssl-images-amazon.com/images/I/51eHSs7gOTL.jpg")
carer2 = Carer.create(username: "thegreatestparent", password: "password2", first_name: "Melissa", last_name: "Pancake", phone: "2405552222", email: "melissa@thegreatepancake.com", picture: "https://images-na.ssl-images-amazon.com/images/I/51eHSs7gOTL.jpg")
carer3 = Carer.create(username: "grandonut", password: "password4", first_name: "Grandonut", last_name: "Le Donut", phone: "3015554444", email: "thegranddame@ladonut.com", picture: "https://images-na.ssl-images-amazon.com/images/I/51eHSs7gOTL.jpg")

student1 = Student.find_or_create_by(student_number: "PA001", first_name: "Elynor", last_name: "Pancake", dob: "September 1, 2014", nickname: "Thunderboy", picture: "https://images-na.ssl-images-amazon.com/images/I/51eHSs7gOTL.jpg", start_date: "September 1, 2018")
student2 = Student.find_or_create_by(student_number: "PA002", first_name: "Fiona", last_name: "Haircut", dob: "September 1, 2014", nickname: "Fighting Unicorn", picture: "https://images-na.ssl-images-amazon.com/images/I/51eHSs7gOTL.jpg", start_date: "September 1, 2018")
student4 = Student.find_or_create_by(student_number: "PA003", first_name: "Jesse", last_name: "Sygurl", dob: "September 1, 2014", nickname: "Frogster", picture: "https://images-na.ssl-images-amazon.com/images/I/51eHSs7gOTL.jpg", start_date: "September 1, 2018")
student3 = Student.find_or_create_by(student_number: "PA004", first_name: "Beckett", last_name: "Thomas", dob: "September 1, 2014", nickname: "SmashSmashSmash", picture: "https://images-na.ssl-images-amazon.com/images/I/51eHSs7gOTL.jpg", start_date: "September 1, 2018")


educator1 = Educator.create(username: "msohno", password: "password1", first_name: "Operah", last_name: "Oh", phone: "2405551212", email: "mso@ohno.com", picture: "https://images-na.ssl-images-amazon.com/images/I/51eHSs7gOTL.jpg", educator_type: 0, admin: true)
educator2 = Educator.create(username: "otto", password: "password2", first_name: "Otto", last_name: "Odd", phone: "2405551212", email: "otto@ottoisodd.com", picture: "https://images-na.ssl-images-amazon.com/images/I/51eHSs7gOTL.jpg", educator_type: 1, admin: true)


studentcarer1 = StudentCarer.find_or_create_by(student_id: student1.id, carer_id: carer1.id, fam: 0 )
studentcarer2 = StudentCarer.find_or_create_by(student_id: student1.id, carer_id: carer2.id, fam: 0 )
studentcarer3 = StudentCarer.find_or_create_by(student_id: student1.id, carer_id: carer3.id, fam: 1 )


room1 = Room.find_or_create_by(room_number: "101", name: "Maple", room_type: 0)

educatorroom1 = EducatorRoom.find_or_create_by(educator_id: educator1.id, room_id: room1.id, hours: "8 to 6", school_year: "2019")
educatorroom2 = EducatorRoom.find_or_create_by(educator_id: educator2.id, room_id: room1.id, hours: "8 to 6" school_year: "2019")

studentroom1= StudentRoom.find_or_create_by(student_id: student1.id, room_id: room1.id, hours: "8 to 6", school_year: "2019")
studentroom2= StudentRoom.find_or_create_by(student_id: student2.id, room_id: room1.id, hours: "8 to 6", school_year: "2019")
studentroom3= StudentRoom.find_or_create_by(student_id: student3.id, room_id: room1.id, hours: "8 to 6", school_year: "2019")
studentroom4= StudentRoom.find_or_create_by(student_id: student4.id, room_id: room1.id, hours: "8 to 6", school_year: "2019")


announcement1 = Announcement.find_or_create_by(initiator_id: educator1.id, receiver_id: carer1.id, subject: "This is a Test", body: "this is a much longer body.  Later I will add room for attachements and other pieces of info.  Eventually, I will add a text editor so we can accept formatting")

message1 = Message.find_or_create_by(announcement_id: announcement1.id, sender_id: educator1.id, body: "Hello, Welcome to the School")
message2 = Message.find_or_create_by(announcement_id: announcement1.id, sender_id: carer1.id, body: "Thank you!")
message3 = Message.find_or_create_by(announcement_id: announcement1.id, sender_id: educator1.id, body: "You are Most Welcome!")
