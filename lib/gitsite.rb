require_relative "./gitsite/version"
require 'fileutils'

module Gitsite
  GH_PAGES_ROOT = 'doc'

  def self.execute
    puts "Finding or creating `doc` directory"
    create_root_directory
  end

  def self.create_root_directory
    FileUtils.mkdir_p GH_PAGES_ROOT
  end
end
