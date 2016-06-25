module Celluloid::IMAP::Constants
  DEBUG = false
  DEBUG_TIMING = true
  DEBUG_AUTOMATA = false
  DEBUG_EVENTS = false

  HANDLERS = 4
  LOGGER = Celluloid::Internals::Logger
  DEFAULT_HOST = '127.0.0.1'
  DEFAULT_PORT = 143
  SSL_PORT = 993
  DEFAULT_BACKLOG = 100
  DEFAULT_BEHAVIOR = :blackhole
  DEFAULT_HOSTNAME = "localhost"
  TIMEOUT = 9
end
