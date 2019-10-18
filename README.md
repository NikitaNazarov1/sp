# sp
# What it does:
    a. Receives a log as argument (webserver.log is provided) e.g.: ./parser.rb webserver.log’
    b. Returns the following:
        list of webpages with most page views ordered from most pages views to less page views e.g.:
            /home 90 visits /index 80 visits etc...
        list of webpages with most unique page views also ordered e.g.:
            /about/2 8 unique views /index 5 unique views etc...
# For install run:
`bundle install`
# For run specs:
`bundle exec rspec`
# For run app:
`ruby parser.rb webserver.log`
