class Celluloid::IMAP::Server
  class << self
    include Celluloid::IMAP::Extensions
    def protector(io)
      Thread.new {
        Timeout.timeout(TIMEOUT) {
          yield(io)
        }
      }.value
    rescue EOFError, IOError
      warn "Premature disconnect."
    rescue Timeout::Error
      warn "Timeout handling connection."
    rescue Exception => ex
      exception(ex, "Unknown connection error")
    ensure
      io.close
    end
  end
end
