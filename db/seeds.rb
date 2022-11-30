KaraokeSingerSong.destroy_all
KaraokeSinger.destroy_all
Song.destroy_all

puts "Add test data to the database..."

KaraokeSinger.create(name: "Madonna", number_of_drinks: 2)
KaraokeSinger.create(name: "Bob the Raccoon", number_of_drinks: 20)

# create ten random singers
10.times do
    singer = KaraokeSinger.create( 
        name: Faker::Name.name, 
        number_of_drinks: rand(0..5) 
    )
    puts "Created #{singer.name}"
end

10.times do
    song = Song.create( 
        title: Faker::Music.album, 
        runtime_in_minutes: rand(0..9), 
        artist_name: Faker::Music.band 
    )
    puts "Created #{song.title}"
end

10.times do
    # creating joins by grabbing random songs and singers
    KaraokeSingerSong.create(
        karaoke_singer: KaraokeSinger.all.sample,
        song: Song.all.sample
    )
end

puts "Done!"