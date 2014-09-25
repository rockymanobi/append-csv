require 'fileutils'

FileUtils.rm_r "./parts" if Dir.exists? "./parts"
FileUtils.rm_r "./master" if Dir.exists? "./master"

FileUtils.cp_r( "./res/master", "./" )
FileUtils.cp_r( "./res/parts", "./" )


