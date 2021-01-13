bundle:
	bundle check || bundle install

install-dependencies: bundle npm

run: install-dependencies
	bundle exec jekyll serve --trace --baseurl ''

build: install-dependencies
	bundle exec jekyll build

test: build
	bundle exec rspec spec

clean:
	rm -rf _site

npm:
	npm ci

update:
	bundle update
