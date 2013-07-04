#!/usr/bin/env ruby
require 'octokit'

login = ENV['GITHUB_LOGIN']
token = ENV['GITHUB_TOKEN']
client = Octokit::Client.new(:login => login, :oauth_token => token)

# puts self info
puts client.user login
