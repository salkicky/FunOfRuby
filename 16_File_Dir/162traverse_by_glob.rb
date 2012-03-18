# encoding:shift_jis

def traverse(path)
  Dir.glob(["#{path}/**/*", "#{path}/**/.*"]).each do |name|
   unless File.directory? name
     process_file name
   end
  end
end

def process_file(name)
  p name
end

traverse(ARGV[0])
