require_relative('../lib/append_csv.rb')
require('readline')

master_dir = ARGV[0]
from_dir = ARGV[1]

confirm_text = Readline.readline( "#{from_dir}の内容を#{master_dir}に連結します。よろしいですか？(y/n)" )
unless confirm_text == "y" 
  p '処理を中止します'
  exit
end

AppendCsv.appendToMaster( from_dir, master_dir )

