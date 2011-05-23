Gem::Specification.new do |s|
  s.name     = 'http-error'
  s.version  = '1.1'
  s.summary  = 'Return HTTP error codes while rendering the corresponding error page in Rails.'
  s.homepage = 'http://codyrobbins.com/software/http-error'
  s.author   = 'Cody Robbins'
  s.email    = 'cody@codyrobbins.com'

  s.post_install_message = '
-------------------------------------------------------------
Follow me on Twitter: http://twitter.com/codyrobbins
-------------------------------------------------------------

'

  s.files = `git ls-files`.split
end