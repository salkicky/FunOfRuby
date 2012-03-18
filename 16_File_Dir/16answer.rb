# encoding: shift_jis

## (1)

def print_libraries
  $:.each do |path|
    next unless FileTest.directory?(path)
    Dir.open(path) do |dir|
      dir.each do |name|
        if name =~ /\.rb$/i
          puts name
        end
      end
    end
  end
end

print_libraries

require "rbconfig"

def print_libraries_with_dll
  $:.each do |path|
    next unless FileTest.directory?(path)
    dlext = RbConfig::CONFIG["DLEXT"]
    Dir.open(path) do |name|
      if name =~ /\.rb$/i || name =~ /\.#{dlext}$/i
        puts name
      end
      end
  end
end

print_libraries_with_dll

puts "===== (2) ====="

require "find"

def du(path)
  result = 0
  Find.find(path){|f|
    if File.file?(f)
      result += File.size(f)
    end
  }
  printf("%d %s\n", result,path)
  return result
end

du(ARGV[0] || ".")
