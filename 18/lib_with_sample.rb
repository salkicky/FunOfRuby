# encoding:shift_jis

# �N���X�̒�`
class Foo
  def initialize
    puts "foo!"
  end
end


# �T���v���R�[�h
# �����̃t�@�C���Ƀ��C�u�����Ƃ��Ď�荞�܂ꂽ�ꍇ�͎��s����Ȃ�
# ���������g���w�肳�ꂽ�ꍇ�������s
if __FILE__ == $0
  Foo.new
end

