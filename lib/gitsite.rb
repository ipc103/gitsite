require_relative "./gitsite/version"
require 'fileutils'

module Gitsite
  ROOT_DIRECTORY_NAME = 'doc'

  def self.execute
    puts "Finding or creating `doc` directory"
    create_root_directory
  end

  def self.create_root_directory
    FileUtils.mkdir_p ROOT_DIRECTORY_NAME
  end
end
