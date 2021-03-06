# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless User.find_by_email(ENV['EMAIL_TONIO'])
  User.create(first_name: 'Tonio',
              last_name: 'Serna',
              username: 'tonius',
              remote_picture_url: 'https://copair.gitlab.io/with/img/antonio.png' ,
              email: ENV['EMAIL_TONIO'],
              password: ENV['PASSWORD_TONIO'],
              password_confirmation: ENV['PASSWORD_TONIO'],
              fluent_language: 'Spanish, Catalan, English, Italian, German',
              contact_preference: ENV['CONTACT_TONIO'],
              shared_screen_tool: 'Teamviewer, Join.me, Skype',
              location: 'Berlin, Germany',
              present_skills: ['Ruby', 'Rails', 'Git', 'CSS / CSS3', 'HTML', 'BASH', 'JavaScript', 'Ubuntu', 'AWS'],
              future_skills: ['React', 'Node.js', 'Terraform', 'Elixir', 'Phoenix', 'Python'],
              average_skill_level: 3.5,
              short_goal: 'I am researching how to do a proper Copair form adding the skills with different levels and adding a new box evey time you add one. Do you know how to do Copair and do some pair programming with me? :)',
              medium_goal: 'Work with a team in a new an exciting proyect and have The first full Beta version 100% ready, With the Blog, SEO, Social Media and at least 20 users',
              long_goal: 'Make Copair big enough*(400 users) and create community!',
              resume: 'Copair founder, Berlin based Economist & Full Stack Ruby on Rails Dev. I like languages, food, sport, traveling, code & nature',
              code_reviewer: true,
              social_media_info: 'https://github.com/nelantone, https://twitter.com/toniousx')
end

unless User.find_by_email(ENV['EMAIL_BEN'])
  User.create(first_name: 'Benn',
              last_name: 'Jones',
              username: 'Benn',
              remote_picture_url: 'https://www.bitwala.com/wp-content/uploads/2016/10/Ben-Jones-CTO-400x400.jpg' ,
              email: ENV['EMAIL_BEN'],
              password: ENV['PASSWORD_BEN'],
              password_confirmation: ENV['PASSWORD_BEN'],
              fluent_language: 'English',
              contact_preference: ENV['CONTACT_BEN'],
              shared_screen_tool: 'Join.me',
              location: 'Berlin, Germany',
              present_skills: ['JavaScript', 'HTML', 'CSS / CSS3', 'Blockchain'],
              future_skills: ['Solidity', 'Haskell'],
              social_media_info: 'https://github.com/yogiben, https://twitter.com/BenPeterJones',
              resume: 'Polyglot (including JavaScript). CTO & Co-founder at Bitwala')
end

unless User.find_by_email(ENV['EMAIL_HUGO'])
  User.create(first_name: 'Hugo',
              last_name: 'Ikta',
              username: 'hugoichter',
              remote_picture_url: 'https://d1qb2nb5cznatu.cloudfront.net/users/5143606-large?148984921.png',
              email: ENV['EMAIL_HUGO'],
              password: ENV['PASSWORD_HUGO'],
              password_confirmation: ENV['PASSWORD_HUGO'],
              fluent_language: 'Portuguese, French, English, Spanish',
              contact_preference: ENV['EMAIL_HUGO'],
              shared_screen_tool: 'Google hangouts, Skype, Teamviewer',
              location: 'Medellin, Colombia',
              present_skills: ['HTML', 'Git', 'CSS / CSS3'],
              future_skills: ['HTML', 'Git', 'CSS / CSS3'],
              social_media_info: 'https://twitter.com/hugoikta',
              resume: 'CEO & Founder at John Coaching')
end


unless User.find_by_email('geekymoss@example.com')
  FactoryBot.create(:user)
end

puts "Seed successful"
## results
puts 'There are: '
puts "#{User.all.count} users"
