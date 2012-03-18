# encoding:shift_jis

#### 16.1 ######

begin
  File.rename "before.txt", "after.txt"
  File.rename "after.txt", "sample/after.txt"
rescue
  print "指定されたファイルがありません\n"
end


def copy(from, to)
  open(from) do |input|
    open(to, "w") do |output|
      output.write(input.read)
    end
  end
end

####
$stdout << open("|dir sample").read
open("|del sample\\*.txt")
$stdout << open("|dir sample").read

open("data.txt","w") do |io|
  io.puts("aaaaa")
  io.puts("bb")
  io.puts("ccccccc")
end

require "fileutils"
FileUtils.cp("data.txt", "sample/data.txt")
FileUtils.mv("data.txt", "sample/data2.txt")

$stdout << open("|dir sample").read

File.delete("sample/data.txt")

#### 16.2 ########

p "Dir.pwd : #{Dir.pwd}"
pass = Dir.pwd

Dir.chdir("sample/")     # 相対パスによる移動
p Dir.pwd

Dir.chdir(pass)          # 絶対パスによる移動
p Dir.pwd

# Dir.open,close
puts "======="

dir = Dir.open("sample")
while name = dir.read
  p name
end
dir.close

dir = Dir.open("sample")
dir.each do |name|
  p name
end

Dir.open(".") do |dir|
  dir.each do |name|
    p name
  end
end

# Dir.glob
p "========="
p Dir.glob("*")
p Dir.glob(".*")
p Dir.glob(["*sample.rb", "161*"])
p Dir.glob("sample/*")
p Dir.glob(["*","*/*"])

p Dir.glob(%w(* */*.txt))
p Dir.glob("16_sample.?b")
p Dir.glob(%w(16[1_]*))
p Dir.glob("../**/*")
p Dir.glob("../16*/**/*.txt")

# Dir.mkdir
Dir.mkdir("temp")
p Dir.glob("*")
Dir.rmdir("temp")

#### 16.3 ######

# File.start
p File.stat(".")

filename = "sample/data2.txt"
open(filename,"w").close

st = File.stat(filename)
p st.ctime
p st.mtime
p st.atime
p "===="
File.utime(Time.now-180, Time.now-180, filename)
st = File.stat(filename)
p st.ctime
p st.mtime
p st.atime

# File.chmod
# File.chown

# FileTest
p FileTest.exist?("aaa")
p FileTest.file?("sample")
p FileTest.directory?("sample")
p FileTest.readable?("sample")
p FileTest.writable?("sample")
p FileTest.executable?("sample")
p FileTest.size(__FILE__)
p "--"
p FileTest.size?(__FILE__)

### 16.4 #######

# File.basename
p Dir.pwd
p File.basename(Dir.pwd)
p __FILE__
p File.basename(__FILE__, ".rb")

# File.dirname
p Dir.pwd
p File.dirname(Dir.pwd)
p File.basename(Dir.pwd)

# File.extname
p __FILE__
p File.extname(__FILE__)
p File.extname("sample")

# File.split()
fullpath = Dir.pwd + "/" + __FILE__
p fullpath
p File.split(fullpath)

dir, base = File.split(fullpath)
p dir
p base

# File.join()
p File.join(".", "sample", "data2.txt")
p File::SEPARATOR

# File.expand_path()

p Dir.pwd
p File.expand_path(Dir.pwd)
p File.expand_path("..")
p File.expand_path("sample", ".")

#### 16.5 ########

# find

# tempfile
require "tempfile"
tf = Tempfile.new("dddd")
p tf
p tf.close
p tf.open
p tf.path

# fileutils
require "fileutils"
p FileUtils.cp_r("sample", "a")
