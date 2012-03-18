# encoding:shift_jis

## 1
def print_libraries()
  $:.each do |path|
    Dir.glob("#{path}/*.rb").each do |rbfile|
      p File.basename(rbfile)
    end
  end
end

require "rbconfig"
def print_libraries_with_dlext
  dlext = RbConfig::CONFIG["DLEXT"]
  p dlext
  
  $:.each do |path|
    Dir.glob("*").each do |file|
      p File.basename(file) if /\.rb$/i =~ file || /\.#{dlext}$/i =~ file
    end
  end
end

## 2
def du(path)
  sum = 0

  Dir.glob("#{path}/*").each do |file|
    size = 0
    if /^\./ =~ File.basename(file) 
      next
    elsif FileTest.file?(file)
      # �t�@�C���Ȃ�T�C�Y��\��
      size = File.size(file)
      print_size(size, file)
    elsif FileTest.directory?(file)
      # �f�B���N�g���Ȃ�ċN�Ăяo��
      size = du(file)
    end
    # �T�C�Y���v�̉��Z
    sum += size
  end

  # �t�H���_���v�T�C�Y��\��
  print_size(sum, path)
  sum
end

## 2
def print_size(size, path)
  printf("%4d   : %s\n",size,path)
end


###########################
case ARGV[0]
when "1"
  p $:
  print_libraries()
when "2"
  du(ARGV[1])
when "3"
  print_libraries_with_dlext
else
  # (1)
  print_libraries()
end
