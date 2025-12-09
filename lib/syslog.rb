begin
  if RUBY_ENGINE == 'jruby'
    require 'syslog/jruby'
  else
    require 'syslog_ext'
  end
rescue LoadError
  raise LoadError.new(<<-EOS)
      Can't load Syslog!
  
      Syslog is not supported on your system. For Windows
      we recommend using the win32-eventlog gem.
    EOS
end
