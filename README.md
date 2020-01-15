# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



Ended with the following error:

Failures:

  1) Album is expected to have and belong to many artists
     Failure/Error: it { should have_and_belong_to_many :artists }

     NoMethodError:
       undefined method `right_reflection' for nil:NilClass
     # ./spec/models/album_spec.rb:8:in `block (2 levels) in <main>'

  2) Artist is expected to have and belong to many albums
     Failure/Error: it { should have_and_belong_to_many :albums }

     NoMethodError:
       undefined method `right_reflection' for nil:NilClass
     # ./spec/models/artist_spec.rb:2:in `block (2 levels) in <main>'

Finished in 0.11692 seconds (files took 1.1 seconds to load)
11 examples, 2 failures

Failed examples:
