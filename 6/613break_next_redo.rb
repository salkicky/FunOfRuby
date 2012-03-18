# encoding : shift_jis

print "break‚Ì—á:\n"
i = 0
[ "Perl", "Python", "Ruby", "Scheme"].each do |lang|
  i += 1
  if i == 3
    break
  end
  p [ i, lang]
end

print "\nnext‚Ì—á:\n"
i = 0
["Perl", "Python", "Ruby", "Scheme"].each do |lang|
  i += 1
  if i ==3
    next
  end
  p [i, lang]
end

print "\nredo‚Ì—á:\n"
i = 0
["Perl", "Python", "Ruby", "Scheme"].each do |lang|
  i += 1
  if i == 3
    redo
  end
  p [i, lang]
end

