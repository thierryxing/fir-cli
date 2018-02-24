# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fir/version'

Gem::Specification.new do |spec|
  spec.name          = 'fir-cli'
  spec.version       = FIR::VERSION
  spec.authors       = ['NaixSpirit']
  spec.email         = ['neverlandxy.naix@gmail.com']
  spec.date          = Time.now.strftime('%Y-%m-%d')
  spec.summary       = 'fir.im command tool'
  spec.description   = 'fir.im command tool, support iOS and Android'
  spec.homepage      = 'https://github.com/FIRHQ/fir-cli'
  spec.license       = 'MIT'
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.post_install_message = %q(
        ______________        ________    ____
       / ____/  _/ __ \      / ____/ /   /  _/
      / /_   / // /_/ /_____/ /   / /    / /
     / __/ _/ // _, _/_____/ /___/ /____/ /
    /_/   /___/_/ |_|      \____/_____/___/

  ## 更新记录
  ### fir-cli 1.5.1
  - 修复了在 ruby 2.4.0 中登录出错的bug
  - 详细更新记录, 请查看: https://github.com/FIRHQ/fir-cli/blob/master/CHANGELOG
  - [fir-cli](https://github.com/FIRHQ/fir-cli) 已经开源
  - 欢迎 fork, issue 和 pull request
  )

  spec.add_development_dependency 'bundler',  '~> 1.7'
  spec.add_development_dependency 'rake',     '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.7'
  spec.add_development_dependency 'pry',      '~> 0.10'

  spec.add_dependency 'thor',           '~> 0.19'
  spec.add_dependency 'CFPropertyList', '~> 2.3'
  spec.add_dependency 'rest-client',    '~> 2.0'
  spec.add_dependency 'ruby_android',   '~> 0.7.7'
  spec.add_dependency 'rqrcode',        '~> 0.7'
  spec.add_dependency 'xcodeproj',      '~> 1.5'
end
