# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Message.destroy_all
Match.destroy_all
SelectedLanguage.destroy_all
SelectedArtist.destroy_all
Artist.destroy_all
Language.destroy_all
Profile.destroy_all
User.destroy_all

# 10 Users && 10 Profiles
user_1 = User.create!(email: "nete@gmail.com", password: 123456)
profile_1 = Profile.create(name: "maria", age: 34, location: "Leblon", pronouns: "she", user_id: user_1.id)

user_2 = User.create!(email: "filho@gmail.com", password: 123456)
profile_2 = Profile.create(name: "lucas", age: 21, location: "Amsterdam", pronouns: "they", user_id: user_2.id)

user_3 = User.create!(email: "neta@gmail.com", password: 123456)
profile_3 = Profile.create(name: "Fabianne", age: 26, location: "Berlin", pronouns: "she", user_id: user_3.id)

user_4 = User.create!(email: "father@gmail.com", password: 123456)
profile_4 = Profile.create(name: "Brendan", age: 27, location: "Paris", pronouns: "they", user_id: user_4.id)

user_5 = User.create!(email: "mother@gmail.com", password: 123456)
profile_5 = Profile.create(name: "luiza", age: 28, location: "new york city", pronouns: "they", user_id: user_5.id)

user_6 = User.create!(email: "son@gmail.com", password: 123456)
profile_6 = Profile.create(name: "marco", age: 20, location: "London", pronouns: "she", user_id: user_6.id)

user_7 = User.create!(email: "cousin@gmail.com", password: 123456)
profile_7 = Profile.create(name: "Mona", age: 41, location: "Ibiza", pronouns: "she", user_id: user_7.id)

user_8 = User.create!(email: "brother@gmail.com", password: 123456)
profile_8 = Profile.create(name: "luca", age: 30, location: "Seoul", pronouns: "he", user_id: user_8.id)

user_9 = User.create!(email: "filhi@gmail.com", password: 123456)
profile_9 = Profile.create(name: "Maju", age: 35, location: "Brussels", pronouns: "she", user_id: user_9.id)

user_10 = User.create!(email: "filhy@gmail.com", password: 123456)
profile_10 = Profile.create(name: "Deborah", age: 30, location: "Milan", pronouns: "she", user_id: user_10.id)

language_1 = Language.new(language: "English")
language_2 = Language.new(language: "German")
language_3 = Language.new(language: "Spanish")
language_4 = Language.new(language: "Italian")
language_5 = Language.new(language: "Portuguese")

artist_1 = Artist.create(name: "Pablo Vittar")
artist_2 = Artist.create(name:"Beach Bunny")
artist_3 = Artist.create(name: "Tuisku")
artist_4 = Artist.create(name: "Adele")

#- 20 (each user likes 2 artists)

selected_artists_1 = SelectedArtist.create(profile: profile_1, artist: artist_1)
selected_artists_2 = SelectedArtist.create(profile: profile_1, artist: artist_4)
selected_artists_3 = SelectedArtist.create(profile: profile_2, artist: artist_2)
selected_artists_4 = SelectedArtist.create(profile: profile_2, artist: artist_3)
selected_artists_5 = SelectedArtist.create(profile: profile_5, artist: artist_4)
selected_artists_6 = SelectedArtist.create(profile: profile_5, artist: artist_3)
selected_artists_7 = SelectedArtist.create(profile: profile_6, artist: artist_1)
selected_artists_8 = SelectedArtist.create(profile: profile_6, artist: artist_2)
selected_artists_9 = SelectedArtist.create(profile: profile_7, artist: artist_4)
selected_artists_10 = SelectedArtist.create(profile: profile_7, artist: artist_3)
selected_artists_11 = SelectedArtist.create(profile:profile_8, artist: artist_1)
selected_artists_12 = SelectedArtist.create(profile:profile_8, artist: artist_1)
selected_artists_13 = SelectedArtist.create(profile:profile_9, artist: artist_4)
selected_artists_14 = SelectedArtist.create(profile:profile_9, artist: artist_3)
selected_artists_15 = SelectedArtist.create(profile:profile_10, artist: artist_1)
selected_artists_16 = SelectedArtist.create(profile:profile_5, artist: artist_4)
selected_artists_17 = SelectedArtist.create(profile:profile_5, artist: artist_1)
selected_artists_18 = SelectedArtist.create(profile:profile_1,artist: artist_1)
selected_artists_19 = SelectedArtist.create(profile:profile_3, artist: artist_2)
selected_artists_20 = SelectedArtist.create(profile:profile_10,artist: artist_2)

# - 20 (each user speaks 2 languages)
selected_languages_1 = SelectedLanguage.create(profile:  profile_1, language: language_1)
selected_languages_2 = SelectedLanguage.create(profile:  profile_1, language: language_5)
selected_languages_3 = SelectedLanguage.create(profile:  profile_2, language: language_2)
selected_languages_4 = SelectedLanguage.create(profile:  profile_2, language: language_3)
selected_languages_5 = SelectedLanguage.create(profile:  profile_5, language: language_2)
selected_languages_6 = SelectedLanguage.create(profile:  profile_5, language: language_1)
selected_languages_7 = SelectedLanguage.create(profile:  profile_6, language: language_5)
selected_languages_8 = SelectedLanguage.create(profile:  profile_6, language: language_1)
selected_languages_9 = SelectedLanguage.create(profile:  profile_7, language: language_3)
selected_languages_10 = SelectedLanguage.create(profile: profile_7, language: language_1)
selected_languages_11 = SelectedLanguage.create(profile: profile_8, language: language_2)
selected_languages_12 = SelectedLanguage.create(profile: profile_8, language: language_4)
selected_languages_13 = SelectedLanguage.create(profile: profile_9, language: language_1)
selected_languages_14 = SelectedLanguage.create(profile: profile_9, language: language_1)
selected_languages_15 = SelectedLanguage.create(profile: profile_5, language: language_4)
selected_languages_16 = SelectedLanguage.create(profile: profile_5, language: language_5)
selected_languages_17 = SelectedLanguage.create(profile: profile_1, language: language_3)
selected_languages_18 = SelectedLanguage.create(profile: profile_3, language: language_1)
selected_languages_19 = SelectedLanguage.create(profile: profile_10,language: language_3)
selected_languages_20 = SelectedLanguage.create(profile: profile_1, language: language_3)

# Matches - pending (waiting for a method to check if the Profiles can be matched - Beth)
