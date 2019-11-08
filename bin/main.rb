File.open("marged_sorted","r"){|f|
if $*[0]=~/^[あ-ん]$/ && $*[1]=~/^[2-9]$/
 hiragana=$*[0].tr('ぁ-ん','ァ-ン')
 num=$*[1].to_i-2
 line_num=$*[2].to_i>0 ? $*[2].to_i : 10
 puts f.read.split("\n").grep(/ #{hiragana}.{#{num}}[^ン]$/).shuffle[0,line_num]
else
 raise ArgumentError
end
}
