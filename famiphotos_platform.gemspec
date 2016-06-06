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
  # platform test
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'minitest-rails'
  # メソッドmockを追加できる様にする
  s.add_development_dependency 'minitest-stub_any_instance'
  # constをstub出来るようにする
  s.add_development_dependency 'minitest-stub-const'
  # let文で遅延読み込みを使えるようにする
  s.add_development_dependency 'minitest-bang'
  # 行番号指定でテスト実行出来る様にする
  s.add_development_dependency 'minitest-line'
  s.add_development_dependency 'minitest-reporters' # テスト結果の表示を整形
  s.add_development_dependency 'factory_girl_rails'
end
