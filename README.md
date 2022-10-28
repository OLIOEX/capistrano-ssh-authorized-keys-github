# Capistrano Cloudwatch [![Build Status](https://app.travis-ci.com/OLIOEX/capistrano-ssh-authorized-keys-github.svg?branch=main)](https://app.travis-ci.com/olioex/capistrano-ssh-authorized-keys-github) [![Gem Version](https://badge.fury.io/rb/capistrano-ssh-authorized-keys-github.svg)](http://badge.fury.io/rb/capistrano-ssh-authorized-keys-github)

Sync organisation SSH public keys to server `authorized_keys` file so they are able to SSH into OS - for [Capistrano v3](https://github.com/capistrano/capistrano).

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-ssh-authorized-keys-github', require: false

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-ssh-authorized-keys-github

## Usage

Require the gem in your `Capfile`:

    require 'capistrano/ssh-authorized-keys-github'

And then set the variables in `config/deploy.rb`:

    set :github_org, 'olioex'
    # ...or... (takes priority)
    set :github_orgs, ['olioex', 'github']

The task will run automatically on successful deploy. Alternatively, you can notify of a deploy starting manually by using:

    bundle exec cap production security:sync_ssh_keys

### Notes

Users in your organisation will need to have their membership public in order for SSH public keys to be sync'd to the server.

Github rate limits aren't currently respected. They are limited to 60 per hour. if you have a large number of users and are doing regular syncing from an IP address then you will be rate limited.

## Copyright

Copyright (c) 2022 OLIO Exchange Ltd. See LICENSE.txt for further details.