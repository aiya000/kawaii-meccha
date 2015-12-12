# Temporary implementation
# This has not brain
class KawaiiCore
  def initialize
    @messageList = [
        'おはよう、よく眠れましたか？',
        '朝ごはん、もうできてますよ！ ずんだもち。',
        "モナド？ 単なる自己関手の圏におけるモノイド対象だよ。\n何か問題でも？",
        'むちむちじゃありません！ もちもちです！',
        "皆のハート打ち抜くぞ〜\nずんだアローシュート！",
        "お口開けてください、あーん♡\nたこ焼き味のずんだもちです！"
    ]
  end

  def message(_)
    n = rand(0 .. @messageList.count() - 1)
    @messageList[n]
  end
end
