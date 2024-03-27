require "open-uri"

puts "Cleaning database"

Message.destroy_all
Match.destroy_all
SelectedLanguage.destroy_all
SelectedArtist.destroy_all
Artist.destroy_all
Language.destroy_all
Profile.destroy_all
User.destroy_all

puts "All done! Let's get started."

users_info = {
  "Abdullahi Abdulkadir" => {
    image_url: "https://avatars.githubusercontent.com/u/106488802?v=4",
    pronouns: "he/his"
  },
  "Luisa Aslanidis" => {
    image_url: "https://avatars.githubusercontent.com/u/113432253?v=4",
    pronouns: "she/her"
  },
  "Andrea Basili" => {
    image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1706097314/niq8kelrngzgz3jwo6ov.jpg",
    pronouns: "he/his"
  },
  "Barbara Bouillicot" => {
    image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1706094472/dxgcvpm46fwiwphanzu7.jpg",
    pronouns: "she/her"
  },
  "Ningjie Cao" => {
    image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1706104311/p9b8ditxhagse3mtemtw.jpg",
    pronouns: "he/his"
  },
  "João Crespo" => {
    image_url: "https://avatars.githubusercontent.com/u/125745069?v=4",
    pronouns: "he/his"
  },
  "Beth Geast" => {
    image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1706122226/onx7fjjj7rpw01xbtfqm.jpg",
    pronouns: "she/her"
  },
  "Matthew Gregory" => {
    image_url: "https://avatars.githubusercontent.com/u/98674394?v=4",
    pronouns: "he/his"
  },
  "Joshua Koch" => {
    image_url: "https://avatars.githubusercontent.com/u/157491156?v=4",
    pronouns: "he/his"
  },
  "Sora Mustafa" => {
    image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1706516629/qk3yy5xj9sd9gucnbbrn.jpg",
    pronouns: "she/her"
  },
  "Simone Napoli" => {
    image_url: "https://avatars.githubusercontent.com/u/121980772?v=4",
    pronouns: "he/his"
  },
  "Lucas Neto" => {
    image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1706546691/agx4fisvbsekibkxdk57.jpg",
    pronouns: "he/his"
  },
  "Antonio Pereira" => {
    image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1706094813/njguvgngq7uzk7dymjjh.jpg",
    pronouns: "he/his"
  },
  "Jack Richmond" => {
    image_url: "https://avatars.githubusercontent.com/u/157632505?v=4",
    pronouns: "he/his"
  },
  "Sam Ridsdale" => {
    image_url: "https://avatars.githubusercontent.com/u/157513689?v=4",
    pronouns: "he/his"
  },
  "Muhammad Rizky" => {
    image_url: "https://avatars.githubusercontent.com/u/154841727?v=4",
    pronouns: "he/his"
  },
  "Gabriel Teodorescu" => {
    image_url: "https://avatars.githubusercontent.com/u/157483639?v=4",
    pronouns: "he/his"
  },
  "Boy Tillekens" => {
    image_url: "https://avatars.githubusercontent.com/u/124054707?v=4",
    pronouns: "he/his"
  },
  "Yusuke Huuskonen" => {
    image_url: "https://avatars.githubusercontent.com/u/45196270?v=4",
    pronouns: "he/his"
  },
  "Maria Tomsa" => {
    image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1706105013/q1z17m9fk7np9orpwj7n.jpg",
    pronouns: "she/her"
  },
  "Charlie Wilson" => {
    image_url: "https://avatars.githubusercontent.com/u/8373377?v=4",
    pronouns: "he/his"
  },
  "Jiahui Zheng" => {
    image_url: "https://avatars.githubusercontent.com/u/55398609?v=4",
    pronouns: "she/her"
  },
  "Laura Zocca" => {
    image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1706098043/iufvotbnr5uk94ftmao2.jpg",
    pronouns: "she/her"
  },
  "Luca Severo" => {
    image_url: "https://avatars.githubusercontent.com/u/81879181?v=4",
    pronouns: "he/his"
  },
  "Alexander Dubovoy" => {
    image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1582630583/ky7b8bb3ogcx0lpdgkvd.jpg",
    pronouns: "he/his"
  },
  "Arbi Velaj" => {
    image_url: "https://avatars.githubusercontent.com/u/26385065?v=4",
    pronouns: "he/his"
  },
  "Claire Demont" => {
    image_url: "https://avatars.githubusercontent.com/u/45850166?v=4",
    pronouns: "she/her"
  },
  "Dareos Khalili" => {
    image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1610540256/mbf03tpkmvwrgufdaezz.jpg",
    pronouns: "he/his"
  },
  "Dari Goldman" => {
    image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1697034747/wrvo00dixtdjrhrnqfeg.jpg",
    pronouns: "she/her"
  },
  "Grazia Cabras" => {
    image_url: "https://avatars.githubusercontent.com/u/103331969?v=4",
    pronouns: "she/her"
  },
  "Jess Carvalho" => {
    image_url: "https://avatars.githubusercontent.com/u/68972820?v=4",
    pronouns: "she/her"
  },
  "Pedro Miranda" => {
    image_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1592696437/u31nytay6nl7hofmwg6s.jpg",
    pronouns: "he/his"
  },
  "Andre Menezes" => {
    image_url: "https://avatars.githubusercontent.com/u/80218755?v=4",
    pronouns: "he/his"
  }
}

cities = [
  "Tokyo",
  "Delhi",
  "Shanghai",
  "Dhaka",
  "Sao Paulo",
  "Cairo",
  "Mexico City",
  "Beijing",
  "Mumbai",
  "Osaka",
  "Chongqing",
  "Karachi",
  "Kinshasa",
  "Lagos",
  "Istanbul",
  "Buenos Aires",
  "Kolkata",
  "Manila",
  "Guangzhou",
  "Tianjin",
  "Lahore",
  "Bangalore",
  "Rio De Janeiro",
  "Shenzhen",
  "Moscow",
  "Chennai",
  "Bogota",
  "Jakarta",
  "Lima",
  "Paris"
]

bios = [
  "Yoo! I love to rave and I'm looking for some party people. Eat, sleep, rave, repeat",
  "Yeeehaw, cowboy! I love country music",
  "Hi girrrl, do you listen to pop divas too? It's a match!",
  "Greetings, friend. Would you be so kind to walk with me to the Opera?",
  "I wanna Rock n' Roll all night! And party everyday",
  "Don't worry about a thing. Ready to enjoy some reggae vibes?"
]

puts "Users and Profiles:"
users = []
profiles = []

users_info.each do |name, info|
  splitted_name = name.downcase.split
  email = splitted_name[0] + "@" + splitted_name[1] + ".com"
  user = User.create!(email: email, password: "123456")
  users << user
  puts "  User: #{email} created"

  profile = Profile.new(user: user, name: name, age: rand(22..35), location: cities.sample, pronouns: info[:pronouns], bio: bios.sample)
  file = URI.open(info[:image_url])
  profile.photos.attach(io: file, filename: "profile_photo.png", content_type: "image/png")
  profile.save!
  profiles << profile
  puts "  Profile: #{name} created"
  puts ""
end

puts "---"
puts "Languages:"

language_names = ["English", "German", "Spanish", "Italian", "Portuguese"]

languages = language_names.map do |name|
  language = Language.create!(language: name)
  puts "  #{name} created"
  language
end

puts "---"

puts "Artists:"

top_spotify_artists_2023 = [
  'The Weeknd',
  'Taylor Swift',
  'Ariana Grande',
  'Rihanna',
  'Drake',
  'Kanye West',
  'Justin Bieber',
  'Dua Lipa',
  'Coldplay',
  'Bruno Mars',
  'Beyoncé',
  'SZA',
  'David Guetta',
  'Ed Sheeran',
  'Eminem',
  'Bad Bunny',
  'Miley Cyrus',
  'Marshmello',
  'Travis Scott',
  'Calvin Harris',
  'Billie Eilish',
  'Doja Cat',
  '21 Savage',
  'Maroon 5',
  'Shakira',
  'Imagine Dragons',
  'Tate McRae',
  'Olivia Rodrigo',
  'Post Malone',
  'Lady Gaga',
  'Katy Perry',
  'Harry Styles',
  'Lana Del Rey',
  'Playboi Carti',
  'Adele',
  'Sia',
  'Peso Pluma',
  'Benson Boone',
  'Karol G',
  'Nicki Minaj',
  'J Balvin',
  'Tiësto',
  'Future',
  'Metro Boomin',
  'Kendrick Lamar',
  'Ty Dolla Sign',
  'Queen',
  'Khalid',
  'Elton John',
  'Arctic Monkeys'
]

artists = top_spotify_artists_2023.map do |name|
  artist = Artist.create!(name: name)
  puts "  #{name} created"
  artist
end

puts "---"

puts "SelectedArtists and SelectedLanguages"

profiles.each do |profile|
  20.times do |n|
    artist = artists.sample
    if SelectedArtist.create(profile: profile, artist: artist)
      puts "  SelectedArtist: #{profile.name} likes #{artist.name}"
    end
  end

  languages.each do |language|
    SelectedLanguage.create!(profile: profile, language: language)
  end
  "  SelectedLanguages: #{profile.name} speaks all 5 languages"
end

puts "---"
puts "Matches"

artists.each do |artist|
  profiles = artist.profiles.to_a

  pairs = profiles.combination(2).to_a
  pairs.each do |pair|
    if Match.create(first_profile: pair.first, second_profile: pair.last, matched: false)
      puts "It's a match! #{pair.first.name} && #{pair.last.name}"
    end
  end
end
