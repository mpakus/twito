VCR.configure do |c|
  c.ignore_hosts '127.0.0.1', 'localhost'
  c.ignore_localhost = true
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
end
