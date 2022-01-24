FROM ruby:2.7.2


# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /war
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
EXPOSE 1337

CMD ["./game/api.rb"]