youtube_participation = [
  [1, 1],
  [1, 2],
  [1, 1],
  [2, 1]
]

youtube_participant = [
  ["おもちもちゃ", "おもちもちゃ", 0, "マリルリ使い"],
  ["いっちゃそ", "いっちゃそ", 3, "ジュラルドン、エスバ得意"],
]

unite_live_info = [
  "カジャン行くぞーーー",
  "カスタムやる！！！"
]

unite_live_info.each do |title|
  UniteLiveInfo.create(title: title)
end

youtube_participation.each do |unite_live_id, user_id|
  YoutubeParticipation.create(unite_live_id: unite_live_id, user_id: user_id)
end

youtube_participant.each do |yt_name, trainer_name, participant_count, memo|
  YoutubeParticipantInfo.create(youtube_name: yt_name, trainer_name: trainer_name, participant_count: participant_count, memo: memo)
end