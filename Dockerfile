FROM ruby:3.1.2

RUN mkdir /live_management
WORKDIR /live_management
COPY Gemfile* ./
RUN bundle install
COPY . /live_management

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]