
require 'simplecov'

SimpleCov.start do
  add_filter {|sf| sf.filename !~ /\/lib\//}
end

require 'trestle-data'

# Require the debugger, if present.
begin
  require 'debugger'
rescue LoadError
  module Kernel
    def debugger(*args, &block)
      STDERR.puts "*** Debugger not available."
    end
  end
end


class TestAPIKeys
  def TestAPIKeys.get_reverse_phone_key
    YAML.load_file('api_keys.yml')["reverse_phone_key"]
  end
end