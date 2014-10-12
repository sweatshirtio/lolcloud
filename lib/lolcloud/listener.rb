require 'fileutils'
require 'listen'

module Lolcloud
  class Listener
    attr_reader :sync_dirs, :default_sync_dir

    def initialize(options = {})
      @default_sync_dir = File.join(Dir.home, 'lolcloud')
      @sync_dirs = initialize_sync_dirs(options[:sync_dirs] || [])
    end

    def listen_up
      listener = Listen.to(sync_dirs) do |modified, added, removed|
        puts "modified absolute path: #{modified}"
        puts "added absolute path: #{added}"
        puts "removed absolute path: #{removed}"
      end

      listener.start
      sleep
    end

    private

    def initialize_sync_dirs(dirs)
      dirs << default_sync_dir
      FileUtils.mkpath dirs
    end
  end
end
