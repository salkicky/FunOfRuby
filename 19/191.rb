#encoding:shift_jis

# �Q�̋L�q�̈Ӗ��͓���

var = false

name = "Ruby"      # name�Ƀf�t�H���g�l��ݒ肷�� 
if var != nil      # var��nil�łȂ����
  name = var       # name��var��������
end


name = var || "Ruby"


p name


# �z��̐擪�v�f��������ꍇ

ary = [] 

item = nil         # item�ɏ����l��ݒ肷��
if ary             # ary��nil�łȂ����
  item = ary[0]    # ary[0]��item�ɑ������
end

item = ary && ary[0]

p ary 
