youtube_participant = [
  ["おもちもちゃ", "おもちもちゃ", 0, "マリルリ使い"],
  ["いっちゃそ", "いっちゃそ", 3, "ジュラルドン、エスバ得意"],
]

youtube_participant.each do |yt_name, trainer_name, participant_count, memo|
  YoutubeParticipantInfo.create(youtube_name: yt_name, trainer_name: trainer_name, participant_count: participant_count, memo: memo)
end