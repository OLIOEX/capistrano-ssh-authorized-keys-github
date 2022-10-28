# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-ssh-authorized-keys-github'
  spec.version       = '1.0.1'
  spec.authors       = ['lloydwatkin']
  spec.email         = ['lloyd@olioex.com']
  spec.summary       = %q{Sync Github organisation public SSH keys to `server authorized_keys` file}
  spec.description   = %q{Sync Github organisation public SSH keys to `server authorized_keys` file}
  spec.homepage      = 'https://github.com/olioex/capistrano-ssh-authorized-keys-github'
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'capistrano', '>= 2.3.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end