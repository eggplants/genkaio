require_relative "./genkaio/version"

module Genkaio
  class Error < StandardError; end

  def self.version
   return Genkaio::VERSION
  end

  def self.getpath
   return Dir.glob("#{__dir__}/dic/dicdata*").sort[-1]
  end

  def self.interactive
   if RUBY_PLATFORM =~ /linux/
    count=0
    puts <<-'EOS'
== INTERACTIVE  MODE ==
== Ctrl+C,exit->quit ==
    EOS
    loop{
     begin
      count+=1
      print("genkaio:#{"%03d"%count}>>")
      i=gets.chomp
      exit(true) if i=="exit"
      puts "=================="
      puts(`[ -n "#{i}" ]&&ruby $(which genkaio) #{i}`)
      puts "=================="
     rescue Interrupt
      puts
      exit(true)
     end
     }
    end
   end

  #ヘルプ
  def self.help(boo)
   STDERR.puts <<-'USAGE'
    COMMAND:
               genkaio - 某しりとりアプリの回答候補を表示.
    USAGE:
               genkaio [first hiragana] [length]
                       [-l, --line-number(default:10)]
                       [-e, -f, --end(default:nil)]
               genkaio [--help]
               genkaio [-h]
    EXAMPLE:
               genkaio あ8
               genkaio あ 10 -l5 -e る
    USAGE
    exit(boo)
   end


   #ファイルを開いて検索
   def self.search(dicpath, hiragana, length, line_number=10)

   File.open(dicpath, "r"){|f|

    hitdata=f.read.split("\n")
    if hiragana[1].nil?
     hitdata=hitdata.grep(/ #{hiragana[0]}.{#{length}}[^ン]$/)
    .shuffle![0,line_number].map!{|_|_.tr('ァ-ン','ぁ-ん')}
    else
     hitdata=hitdata.grep(/ #{hiragana[0]}.{#{length}}[#{hiragana[1]}]$/)
    .shuffle![0,line_number].map!{|_|_.tr('ァ-ン','ぁ-ん')}
    end
    return hitdata
   }
  end
end
