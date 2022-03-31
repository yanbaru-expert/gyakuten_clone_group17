source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

gem 'rails', '~> 6.0.2', '>= 6.0.2.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'kaminari'

# 管理者画面
gem 'activeadmin'
gem 'devise'

# 日本語化
gem 'rails-i18n', '~> 6.0'
gem 'devise-i18n'

# Bootstrap
gem 'devise-bootstrap-views', '~> 1.0'

# markdown
gem 'redcarpet', '~> 2.3.0'
# シンタックスハイライト
gem 'coderay'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  
  # 「開発環境のみ」にデバッグ用の'gem'を追加
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
end