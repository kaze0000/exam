# FROM ruby:2.6.3
# RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# RUN apt-get update && apt-get install -y postgresql-client --no-install-recommends && rm -rf /var/lib/apt/lists/*
# RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# WORKDIR /var/www

# COPY ./ ./

# ADD Gemfile /exam/Gemfile
# ADD Gemfile.lock /exam/Gemfile.lock

# RUN gem install bundler
# RUN bundle install

# ADD . /exam
