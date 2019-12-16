# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CourseModule.create(name: 'Computational Intelligence', code: 'COM3013', credits: 15, semester: 2, lecturer_id: 4)
CourseModule.create(name: 'Computer Science Education', code: 'COM3027', credits: 15, semester: 2, lecturer_id: 12)
CourseModule.create(name: 'Deep Learning and Advanced AI', code: 'COM3025', credits: 15, semester: 2, lecturer_id: 11)
CourseModule.create(name: 'Distributed Systems', code: 'COM3026', credits: 15, semester: 2, lecturer_id: 3)
CourseModule.create(name: 'Mainframe Computing', code: 'COM3015', credits: 15, semester: 2, lecturer_id: 2)
CourseModule.create(name: 'Project Management', code: 'MAN3104', credits: 15, semester: 2, lecturer_id: 9)
CourseModule.create(name: 'Systems Verification', code: 'COM3028', credits: 15, semester: 2, lecturer_id: 10)
