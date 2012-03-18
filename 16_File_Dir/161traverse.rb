# encoding:shift_jis

def process_file(path)
  puts path
end

def traverse(path)
  if File.directory?(path)    # ディレクトリの場合
    dir = Dir.open(path)
    while name = dir.read
      next if name == "."
      next if name == ".."
      traverse(path + "/" + name)
    end
    dir.close
  else
    process_file(path)
  end
end

traverse(ARGV[0])
