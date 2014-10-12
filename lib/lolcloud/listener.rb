module Lolcloud
  class Listener
    def initialize(options = {})
    end

    def listen_up
      Listen.to(sync_dir) do |modified, added, removed|
        puts "modified absolute path: #{modified}"
        puts "added absolute path: #{added}"
        puts "removed absolute path: #{removed}"
      end
    end
  end
end
