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
StudentSection.destroy_all
EducatorSection.destroy_all
Announcement.destroy_all
Message.destroy_all

carer1 = Carer.create(username: "superparent", user_type: "carer", password: "password1", first_name: "Robert", last_name: "Pancake", phone: "2404233542", email: "rob@worldcrimeleague.org", picture: "https://i.guim.co.uk/img/media/bad0f0c269ed8cb212e8075e9d363f8f4f4b1b9c/0_899_3840_2304/master/3840.jpg?width=300&quality=85&auto=format&fit=max&s=af8904a10d746270d55838a041981797")
carer2 = Carer.create(username: "thegreatestparent", user_type: "carer", password: "password2", first_name: "Melissa", last_name: "Pancake", phone: "2404233542", email: "rob@worldcrimeleague.org", picture: "https://cdn.vox-cdn.com/thumbor/NMSE1SxvhOhj23IZXnK0lB7JRc8=/39x0:754x536/1400x1400/filters:focal(39x0:754x536):format(png)/cdn.vox-cdn.com/uploads/chorus_image/image/47870039/Screen_Shot_2015-12-11_at_5.26.23_PM.0.0.png")
carer3 = Carer.create(username: "grandonut", user_type: "carer", password: "password4", first_name: "Grandonut", last_name: "Le Donut", phone: "2404233542", email: "rob@worldcrimeleague.org", picture: "https://upload.wikimedia.org/wikipedia/commons/0/0f/Debbie_Reynolds_6_Allan_Warren.jpg")

student1 = Student.find_or_create_by(student_number: "PA001", first_name: "Elynor", last_name: "Pancake", dob: "September 1, 2014", nickname: "Thunderboy", picture: "https://d.wattpad.com/story_parts/614054859/images/1547ed9780d972e2819296362541.png", start_date: "September 1, 2018")
student2 = Student.find_or_create_by(student_number: "PA002", first_name: "Fiona", last_name: "Haircut", dob: "September 1, 2014", nickname: "Fighting Unicorn", picture: "https://robohash.org/pumpkin.png?bgset=bg1&size=200x200", start_date: "September 1, 2018")
student4 = Student.find_or_create_by(student_number: "PA003", first_name: "Jesse", last_name: "Sygurl", dob: "September 1, 2014", nickname: "Frogster", picture: "https://robohash.org/aslkdfjalksf.png?bgset=bg1&size=200x200", start_date: "September 1, 2018")
student3 = Student.find_or_create_by(student_number: "PA004", first_name: "Beckett", last_name: "Thomas", dob: "September 1, 2014", nickname: "SmashSmashSmash", picture: "https://robohash.org/asiuoiurijasdf.png?bgset=bg1&size=200x200", start_date: "September 1, 2018")
student4 = Student.find_or_create_by(student_number: "PA001", first_name: "Brad", last_name: "Pancake", dob: "September 1, 2014", nickname: "Slick", picture: "https://robohash.org/98798ihlaksjdflkja.png?bgset=bg1&size=200x200", start_date: "September 1, 2018")
student5 = Student.find_or_create_by(student_number: "PA002", first_name: "Mark", last_name: "Banana", dob: "September 1, 2014", nickname: "Rocketdog", picture: "https://robohash.org/asldkjlasdmfa.png?bgset=bg1&size=200x200", start_date: "September 1, 2018")
student6 = Student.find_or_create_by(student_number: "PA003", first_name: "Jim", last_name: "Apple", dob: "September 1, 2014", nickname: "Half Pie", picture: "https://robohash.org/famlclaisura.png?bgset=bg1&size=200x200", start_date: "September 1, 2018")
student7 = Student.find_or_create_by(student_number: "PA004", first_name: "Sandra", last_name: "Orangeball", dob: "September 1, 2014", nickname: "BakerAche", picture: "https://robohash.org/laskmmmoiqpweuf.png?bgset=bg1&size=200x200", start_date: "September 1, 2018")
student8 = Student.find_or_create_by(student_number: "PA001", first_name: "Mel", last_name: "Frenchtoast", dob: "September 1, 2014", nickname: "Phil", picture: "https://robohash.org/aslkdioekaomcpoe.png?bgset=bg1&size=200x200", start_date: "September 1, 2018")
student9 = Student.find_or_create_by(student_number: "PA002", first_name: "Lana", last_name: "Gumball", dob: "September 1, 2014", nickname: "Dragon Kick", picture: "https://robohash.org/aslkasuflcmd.png?bgset=bg1&size=200x200", start_date: "September 1, 2018")
student10 = Student.find_or_create_by(student_number: "PA003", first_name: "Jake", last_name: "BottleCap", dob: "September 1, 2014", nickname: "Monkeyboy", picture: "https://robohash.org/asdoimciom.png?bgset=bg1&size=200x200", start_date: "September 1, 2018")
student11 = Student.find_or_create_by(student_number: "PA004", first_name: "Emily", last_name: "Stryker", dob: "September 1, 2014", nickname: "Shortstuff", picture: "https://robohash.org/liuuuuuuuaoiscoiujco.png?bgset=bg1&size=200x200", start_date: "September 1, 2018")

# https://robohash.org/superpancake.png?bgset=bg1&size=150x150

educator1 = Educator.create(username: "msohno", password: "password1", user_type: "educator", first_name: "Operah", last_name: "Oh", phone: "2405551212", email: "mso@ohno.com", picture: "https://vignette.wikia.nocookie.net/all-about-this/images/4/4c/Ms.O.jpg/revision/latest?cb=20170415125339", educator_type: 0, admin: true)
educator2 = Educator.create(username: "otto", password: "password2", user_type: "educator", first_name: "Otto", last_name: "Odd", phone: "2405551212", email: "otto@ottoisodd.com", picture: "https://vignette.wikia.nocookie.net/oddsquad/images/4/42/Tumblr_inline_npadw7X5ZB1rv5alo_250.jpg/revision/latest/scale-to-width-down/185?cb=20150617174301", educator_type: 1, admin: true)
educator3 = Educator.create(username: "smith", password: "password2", user_type: "educator", first_name: "Franklin", last_name: "Oats", phone: "2405551212", email: "otto@ottoisodd.com", picture: "https://robohash.org/o8ueoijmaslkdfj.png?bgset=bg1&size=200x200", educator_type: 1, admin: true)
educator4 = Educator.create(username: "tango", password: "password2", user_type: "educator", first_name: "Banana", last_name: "Jones", phone: "2405551212", email: "otto@ottoisodd.com", picture: "https://robohash.org/asdfasdfasdffasa.png?bgset=bg1&size=200x200", educator_type: 0, admin: true)


studentcarer1 = StudentCarer.find_or_create_by(student_id: student1.id, carer_id: carer1.id, fam: 0 )
studentcarer2 = StudentCarer.find_or_create_by(student_id: student1.id, carer_id: carer2.id, fam: 0 )
studentcarer3 = StudentCarer.find_or_create_by(student_id: student1.id, carer_id: carer3.id, fam: 1 )


room1 = Room.find_or_create_by(room_number: "101", name: "Maple", room_type: 0)
room2 = Room.find_or_create_by(room_number: "105", name: "Oak", room_type: 2)
room3 = Room.find_or_create_by(room_number: "201", name: "Cherry", room_type: 1)
room4 = Room.find_or_create_by(room_number: "301", name: "Pine", room_type: 0)

section = Section.find_or_create_by(name: "Montessori", start_hour: "09:00", end_hour: "15:30", description: "Mixed age Montessori Pre-K", academic_year: "2019", room_id: room1.id)
section1 = Section.find_or_create_by(name: "Extended Day", start_hour: "15:30", end_hour: "18:30", description: "Extended Day Care", academic_year: "2019", room_id: room2.id)



educatorsection1 = EducatorSection.find_or_create_by(educator_id: educator1.id, section_id: section.id)
educatorsection2 = EducatorSection.find_or_create_by(educator_id: educator2.id, section_id: section.id)
educatorsection3 = EducatorSection.find_or_create_by(educator_id: educator3.id, section_id: section1.id)
educatorsection4 = EducatorSection.find_or_create_by(educator_id: educator4.id, section_id: section1.id)
educatorsection4 = EducatorSection.find_or_create_by(educator_id: educator2.id, section_id: section1.id)

studentsection1= StudentSection.find_or_create_by(student_id: student1.id, section_id: section.id)
studentsection2= StudentSection.find_or_create_by(student_id: student2.id, section_id: section.id)
studentsection3= StudentSection.find_or_create_by(student_id: student3.id, section_id: section.id)
studentsection4= StudentSection.find_or_create_by(student_id: student4.id, section_id: section.id)
studentsection5= StudentSection.find_or_create_by(student_id: student1.id, section_id: section1.id)
studentsection6= StudentSection.find_or_create_by(student_id: student2.id, section_id: section1.id)
studentsection7= StudentSection.find_or_create_by(student_id: student3.id, section_id: section1.id)
studentsection8= StudentSection.find_or_create_by(student_id: student4.id, section_id: section1.id)
studentsection1= StudentSection.find_or_create_by(student_id: student5.id, section_id: section.id)
studentsection2= StudentSection.find_or_create_by(student_id: student6.id, section_id: section.id)
studentsection3= StudentSection.find_or_create_by(student_id: student7.id, section_id: section.id)
studentsection4= StudentSection.find_or_create_by(student_id: student8.id, section_id: section.id)
studentsection5= StudentSection.find_or_create_by(student_id: student9.id, section_id: section1.id)
studentsection6= StudentSection.find_or_create_by(student_id: student10.id, section_id: section1.id)
studentsection7= StudentSection.find_or_create_by(student_id: student11.id, section_id: section1.id)
studentsection8= StudentSection.find_or_create_by(student_id: student11.id, section_id: section.id)

  #
  # announcement1 = Announcement.find_or_create_by(initiator_id: educator1.id, receiver_id: carer1.id, subject: "This is a Test", body: "this is a much longer body.  Later I will add room for attachements and other pieces of info.  Eventually, I will add a text editor so we can accept formatting")
  #
  # message1 = Message.find_or_create_by(announcement_id: announcement1.id, sender_id: educator1.id, body: "Hello, Welcome to the School")
  # message2 = Message.find_or_create_by(announcement_id: announcement1.id, sender_id: carer1.id, body: "Thank you!")
  # message3 = Message.find_or_create_by(announcement_id: announcement1.id, sender_id: educator1.id, body: "You are Most Welcome!")
