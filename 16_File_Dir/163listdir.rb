# encoding:shift_jis

require "find"

IGNORES = [/^\./, /^CVS$/, /^RCS$/, /[0-9]$/]

def listdir(top)
  Find.find(top) do |path|
    if FileTest.directory?(path)
      dir, base = File.split(path)

      # �����������f�B���N�g���̃`�F�b�N
      IGNORES.each do |re|
        if re =~ base
          Find.prune       # ����ȉ��̌������ȗ�����
        end
      end
      
      puts path
    end
  end
end

listdir(ARGV[0])

