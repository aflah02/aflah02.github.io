FROM ruby:2.7.8-bullseye

ARG BUNDLER_VERSION=2.1.4

ENV BUNDLE_JOBS=4 \
    BUNDLE_RETRY=3 \
    JEKYLL_ENV=development \
    LANG=C.UTF-8

WORKDIR /workspace

RUN gem install bundler --version "${BUNDLER_VERSION}" --no-document

COPY Gemfile Gemfile.lock ./
RUN bundle _${BUNDLER_VERSION}_ install

COPY . .

EXPOSE 4000 35729

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--port", "4000", "--livereload", "--livereload-port", "35729", "--force_polling"]
