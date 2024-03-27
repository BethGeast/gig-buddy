require "open-uri"

Message.destroy_all
Match.destroy_all
SelectedLanguage.destroy_all
SelectedArtist.destroy_all
Artist.destroy_all
Language.destroy_all
Profile.destroy_all
User.destroy_all

# profile pictures
pp_1 = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1706122226/onx7fjjj7rpw01xbtfqm.jpg")
pp_2 = URI.open("https://avatars.githubusercontent.com/u/121980772?v=4")
pp_3 = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1706546691/agx4fisvbsekibkxdk57.jpg")
pp_4 = URI.open("https://avatars.githubusercontent.com/u/81879181?v=4")
pp_5 = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1610540256/mbf03tpkmvwrgufdaezz.jpg")
pp_6 = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1681676887/czsjfcjm1fzrwsrulpwi.jpg")
pp_7 = URI.open("https://avatars.githubusercontent.com/u/26385065?v=4")
pp_8 = URI.open("https://avatars.githubusercontent.com/u/68972820?v=4")
pp_9 = URI.open("https://avatars.githubusercontent.com/u/103331969?v=4")
pp_10 = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1711050823/ex1bhrov5s0glrvqsycj.jpg")



# 10 Users && 10 Profiles
user_one = User.create!(email: "beth@gmail.com", password: 123456)
profile_one = Profile.new(name: "Beth", age: 28, location: "UK", pronouns: "she/her", user_id: user_one.id, bio: "I like dogs more than most people and I make sure everyone knows that")
profile_one.photos.attach(io: pp_1, filename: "beth.png", content_type: "image/png")
profile_one.save

user_two = User.create!(email: "simone@gmail.com", password: 123456)
profile_two = Profile.new(name: "Simone", age: 19, location: "Aruba", pronouns: "he/him", user_id: user_two.id, bio: "Aruba Aruba Aruba, Aruba is the best, LOL")
profile_two.photos.attach(io: pp_2, filename: "simone.png", content_type: "image/png")
profile_two.save

user_three = User.create!(email: "lucas@gmail.com", password: 123456)
profile_three = Profile.new(name: "Lucas", age: 34, location: "Germany", pronouns: "he/him", user_id: user_three.id, bio: "Looking to meet nice people and make some new music loving friends!")
profile_three.photos.attach(io: pp_3, filename: "lucas.png", content_type: "image/png")
profile_three.save

user_four = User.create!(email: "luca@gmail.com", password: 123456)
profile_four = Profile.new(name: "Luca", age: 25, location: "Brazil", pronouns: "he/him", user_id: user_four.id, bio: "Quite literally the nicest person you will ever meet")
profile_four.photos.attach(io: pp_4, filename: "luca.png", content_type: "image/png")
profile_four.save

user_five = User.create!(email: "dareos@gmail.com", password: 123456)
profile_five = Profile.new(name: "Dareos", age: 32, location: "France", pronouns: "he/him", user_id: user_five.id, bio: "Funny but will definitely judge you :dareos-deal-with-it:")
profile_five.photos.attach(io: pp_5, filename: "dareos.png", content_type: "image/png")
profile_five.save

user_six = User.create!(email: "leonardo@gmail.com", password: 123456)
profile_six = Profile.new(name: "Leonardo", age: 30, location: "Italy", pronouns: "he/him", user_id: user_six.id, bio: "I write music but shh. I'm basically Beyonce")
profile_six.photos.attach(io: pp_6, filename: "leonardo.png", content_type: "image/png")
profile_six.save

user_seven = User.create!(email: "arbi@gmail.com", password: 123456)
profile_seven = Profile.new(name: "Arbi", age: 30, location: "Italy", pronouns: "he/him", user_id: user_seven.id, bio: "AC Milan 4eva :aw-yeah:")
profile_seven.photos.attach(io: pp_7, filename: "arbi.png", content_type: "image/png")
profile_seven.save

user_eight = User.create!(email: "jess@gmail.com", password: 123456)
profile_eight = Profile.new(name: "Jess", age: 28, location: "Portugal", pronouns: "she/her", user_id: user_eight.id, bio: "If you have a cute pet I will like you")
profile_eight.photos.attach(io: pp_8, filename: "jess.png", content_type: "image/png")
profile_eight.save

user_nine = User.create!(email: "grazia@gmail.com", password: 123456)
profile_nine = Profile.new(name: "Grazia", age: 27, location: "Italy", pronouns: "she/her", user_id: user_nine.id, bio: "Ciao sweeties!")
profile_nine.photos.attach(io: pp_9, filename: "grazia.png", content_type: "image/png")
profile_nine.save

user_ten = User.create!(email: "paulyn@gmail.com", password: 123456)
profile_ten = Profile.new(name: "Paulyn", age: 26, location: "France", pronouns: "she/her", user_id: user_ten.id, bio: "A real coding machine")
profile_ten.photos.attach(io: pp_10, filename: "paulyn.png", content_type: "image/png")
profile_ten.save

language_one = Language.new(language: "Dutch")
language_two = Language.new(language: "English")
language_three = Language.new(language: "Finnish")
language_four = Language.new(language: "Flemish")
language_five = Language.new(language: "French")
language_six = Language.new(language: "German")
language_seven = Language.new(language: "Italian")
language_eight = Language.new(language: "Portuguese")
language_nine = Language.new(language: "Spanish")
language_ten = Language.new(language: "Swedish")

artist_one = Artist.create(name: "Pablo Vittar")
artist_two = Artist.create(name:"Beach Bunny")
artist_three = Artist.create(name: "Tuisku")
artist_four = Artist.create(name: "Adele")
artist_five = Artist.create(name: "Rihanna")
artist_six = Artist.create(name: "Kylie Minogue")
artist_seven = Artist.create(name: "Spice Girls")
artist_eight = Artist.create(name: "Beyonce")
artist_nine = Artist.create(name: "Britney Spears")
artist_ten = Artist.create(name: "Shakira")

# each user likes at least 1 artist

selected_artists_one = SelectedArtist.create(profile: profile_one, artist: artist_two)
selected_artists_two = SelectedArtist.create(profile: profile_one, artist: artist_three)
selected_artists_three = SelectedArtist.create(profile: profile_one, artist: artist_nine)
selected_artists_four = SelectedArtist.create(profile: profile_one, artist: artist_ten)
selected_artists_five = SelectedArtist.create(profile: profile_two, artist: artist_five)
selected_artists_six = SelectedArtist.create(profile: profile_two, artist: artist_seven)
selected_artists_seven = SelectedArtist.create(profile: profile_two, artist: artist_ten)
selected_artists_eight = SelectedArtist.create(profile: profile_three, artist: artist_one)
selected_artists_nine = SelectedArtist.create(profile: profile_three, artist: artist_eight)
selected_artists_ten = SelectedArtist.create(profile: profile_four, artist: artist_five)
selected_artists_eleven = SelectedArtist.create(profile: profile_four, artist: artist_ten)
selected_artists_twelve = SelectedArtist.create(profile: profile_five, artist: artist_six)
selected_artists_thirteen = SelectedArtist.create(profile: profile_five, artist: artist_seven)
selected_artists_fourteen = SelectedArtist.create(profile: profile_five, artist: artist_nine)
selected_artists_fifteen = SelectedArtist.create(profile: profile_six, artist: artist_three)
selected_artists_sixteen = SelectedArtist.create(profile: profile_seven, artist: artist_ten)
selected_artists_seventeen = SelectedArtist.create(profile: profile_seven, artist: artist_five)
selected_artists_eighteen = SelectedArtist.create(profile: profile_eight, artist: artist_four)
selected_artists_nineteen = SelectedArtist.create(profile: profile_eight, artist: artist_nine)
selected_artists_twenty = SelectedArtist.create(profile: profile_nine, artist: artist_nine)
selected_artists_twentyone = SelectedArtist.create(profile: profile_nine, artist: artist_ten)
selected_artists_twentytwo = SelectedArtist.create(profile: profile_ten, artist: artist_four)
selected_artists_twentythree = SelectedArtist.create(profile: profile_ten, artist: artist_eight)

# each user speaks at least 1 language
selected_languages_one = SelectedLanguage.create(profile: profile_one, language: language_two)
selected_languages_two = SelectedLanguage.create(profile: profile_one, language: language_three)
selected_languages_three = SelectedLanguage.create(profile: profile_two, language: language_two)
selected_languages_four = SelectedLanguage.create(profile: profile_two, language: language_one)
selected_languages_five = SelectedLanguage.create(profile: profile_two, language: language_four)
selected_languages_six = SelectedLanguage.create(profile: profile_three, language: language_one)
selected_languages_seven = SelectedLanguage.create(profile: profile_three, language: language_two)
selected_languages_eight = SelectedLanguage.create(profile: profile_three, language: language_six)
selected_languages_nine = SelectedLanguage.create(profile: profile_three, language: language_eight)
selected_languages_ten = SelectedLanguage.create(profile: profile_four, language: language_two)
selected_languages_eleven = SelectedLanguage.create(profile: profile_four, language: language_eight)
selected_languages_twelve = SelectedLanguage.create(profile: profile_four, language: language_nine)
selected_languages_thirteen = SelectedLanguage.create(profile: profile_five, language: language_two)
selected_languages_fourteen = SelectedLanguage.create(profile: profile_five, language: language_five)
selected_languages_fifteen = SelectedLanguage.create(profile: profile_five, language: language_six)
selected_languages_sixteen = SelectedLanguage.create(profile: profile_six, language: language_two)
selected_languages_seventeen = SelectedLanguage.create(profile: profile_six, language: language_seven)
selected_languages_eighteen = SelectedLanguage.create(profile: profile_seven, language: language_two)
selected_languages_nineteen = SelectedLanguage.create(profile: profile_seven,language: language_seven)
selected_languages_twenty = SelectedLanguage.create(profile: profile_eight, language: language_two)
selected_languages_twentyone = SelectedLanguage.create(profile: profile_eight, language: language_eight)
selected_languages_twentytwo = SelectedLanguage.create(profile: profile_nine, language: language_two)
selected_languages_twentythree = SelectedLanguage.create(profile: profile_nine, language: language_seven)
selected_languages_twentyfour = SelectedLanguage.create(profile: profile_ten, language: language_two)
selected_languages_twentyfive = SelectedLanguage.create(profile: profile_ten, language: language_five)

# matches created for profile one only currently
match_one = Match.create(first_profile_id: profile_one.id, second_profile_id: profile_four.id, matched: true)
match_two = Match.create(first_profile_id: profile_one.id, second_profile_id: profile_five.id, matched: true)
match_three = Match.create(first_profile_id: profile_one.id, second_profile_id: profile_three.id, matched: true)
match_four = Match.create(first_profile_id: profile_one.id, second_profile_id: profile_eight.id, matched: true)
match_five = Match.create(first_profile_id: profile_one.id, second_profile_id: profile_nine.id, matched: true)
match_six = Match.create(first_profile_id: profile_one.id, second_profile_id: profile_six.id, matched: true)
