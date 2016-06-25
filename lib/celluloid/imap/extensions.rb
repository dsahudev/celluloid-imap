module Celluloid::IMAP::Extensions
  def self.included(object)
    object.send(:include, Celluloid::IMAP::Constants)
    object.extend Forwardable
    object.def_delegators :"Celluloid::IMAP::Server.logger", :debug, :console, :warn, :error, :exception
  end
end
