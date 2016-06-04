$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "famiphotos_platform/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "famiphotos_platform"
  s.version     = FamiphotosPlatform::VERSION
  s.authors     = ["nakamura shinichirou"]
  s.email       = ["naka5313@gmail.com"]
  s.homepage    = ""
  s.summary     = "Famiphotosで使う共通ロジック."
  s.description = "モデルのBaseクラスなどの共通系ロジックをまとめる予定"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "mysql2"
  # 認証系
  s.add_development_dependency "omniauth-twitter"
  # template engine
  s.add_development_dependency "slim-rails"
  # 複数DB対応
  s.add_development_dependency 'switch_point'
  # dbスキーマ管理
  s.add_development_dependency 'ridgepole'
end
