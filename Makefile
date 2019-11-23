.EXPORT_ALL_VARIABLES:
	NOKOGIRI_USE_SYSTEM_LIBRARIES=true
	LC_ALL=C.UTF-8
	LANG=en_US.UTF-8
	LANGUAGE=en_US.UTF-8

install:
	gem update --system
	gem install bundle
	bundle install
	gem install jekyll html-proofer
	gem install awesome_bot

check:
	awesome_bot --allow-redirect README.md
	bundle exec jekyll build --incremental
	bundle exec rake test
