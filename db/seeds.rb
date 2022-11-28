# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


youtube_participant = [
  ["おもちもちゃ", "おもちもちゃ", 0, "マリルリ使い"],
  ["いっちゃそ", "いっちゃそ", 3, "ジュラルドン、エスバ得意"],
]

youtube_participant.each do |yt_name, trainer_name, participant_count, memo|
  YoutubeParticipantInfos.create(youtube_name: yt_name, traier_name: trainer_name, participant_count: participant_count, memo: memo)
end