# encoding:shift_jis

require "find"

IGNORES = [/^\./, /^CVS$/, /^RCS$/, /[0-9]$/]

def listdir(top)
  Find.find(top) do |path|
    if FileTest.directory?(path)
      dir, base = File.split(path)

      # 無視したいディレクトリのチェック
      IGNORES.each do |re|
        if re =~ base
          Find.prune       # それ以下の検索を省略する
        end
      end
      
      puts path
    end
  end
end

listdir(ARGV[0])

