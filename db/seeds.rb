# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Lecturer.create(name: 'John Callum')
Lecturer.create(name: 'William Harry')
Lecturer.create(name: 'Paul Williams')
Lecturer.create(name: 'William Ryman')
Lecturer.create(name: 'Paul Barn')
Lecturer.create(name: 'Alex Gate')
Lecturer.create(name: 'Andrew Williams')
Lecturer.create(name: 'Tom Williams')
Lecturer.create(name: 'Stella Reynolds')
Lecturer.create(name: 'Carl Jr')
Lecturer.create(name: 'Alex Mac')
Lecturer.create(name: 'Jason Reynolds')


CourseModule.create(name: 'Advanced Challenges In Web Technologies', code: 'COM3014', credits: 15, semester: 1, lecturer_id: 1)
CourseModule.create(name: 'Computer Security', code: 'COM3009', credits: 15, semester: 1, lecturer_id: 2)
CourseModule.create(name: 'Computer Vision and Pattern Recognition', code: 'EEE3032', credits: 15, semester: 1, lecturer_id: 3)
CourseModule.create(name: 'Entrepreneurship and Innovation: A Business Model Approach', code: 'MAN3132', credits: 15, semester: 1, lecturer_id: 4)
CourseModule.create(name: 'Information Security Management', code: 'COM3017', credits: 15, semester: 1, lecturer_id: 5)
CourseModule.create(name: 'International Business Strategy', code: 'MAN3090', credits: 15, semester: 1, lecturer_id: 6)
CourseModule.create(name: 'Internet of Things', code: 'COM3023', credits: 15, semester: 1, lecturer_id: 7)
CourseModule.create(name: 'Practical Business Analytics', code: 'COM3018', credits: 15, semester: 1, lecturer_id: 8)
CourseModule.create(name: 'Computational Intelligence', code: 'COM3013', credits: 15, semester: 2, lecturer_id: 9)
CourseModule.create(name: 'Computer Science Education', code: 'COM3027', credits: 15, semester: 2, lecturer_id: 10)
CourseModule.create(name: 'Deep Learning and Advanced AI', code: 'COM3025', credits: 15, semester: 2, lecturer_id: 11)
CourseModule.create(name: 'Distributed Systems', code: 'COM3026', credits: 15, semester: 2, lecturer_id: 12)
CourseModule.create(name: 'Mainframe Computing', code: 'COM3015', credits: 15, semester: 2, lecturer_id: 5)
CourseModule.create(name: 'Project Management', code: 'MAN3104', credits: 15, semester: 2, lecturer_id: 1)
CourseModule.create(name: 'Systems Verification', code: 'COM3028', credits: 15, semester: 2, lecturer_id: 6)
