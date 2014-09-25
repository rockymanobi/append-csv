module AppendCsv
  def appendToMaster( from_dir , dest_dir )
    Dir.new( from_dir ).reject { |f| f.to_s =~ /\.$/ }.each do |f|
      append_parts_csv_without_header( f , from_dir, dest_dir)
    end
  end

  def append_parts_csv_without_header( file_name , src_dir, dest_dir  )

    lines = open( File.join src_dir , file_name ) {|file|
      file.readlines
    }

    to = open( File.join(dest_dir , file_name), "a")

    lines.each_with_index do | item, idx |
      to << item unless idx == 0
    end
  end

  extend self

end

