require 'logger'

module Logging
  class << self
    attr_accessor :log_location

    @@log_location = File.join('log', 'lolcloud.log')

    def logger
      @logger ||= Logger.new log_location
    end
  end

  def logger
    Logging.logger
  end
end
