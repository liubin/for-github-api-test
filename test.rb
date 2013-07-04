#!/usr/bin/env ruby
require 'octokit'
require 'pp'

login = ENV['GITHUB_LOGIN']
token = ENV['GITHUB_TOKEN']
client = Octokit::Client.new(:login => login, :oauth_token => token)

# puts self info
me = client.user login
#pp me

branches = client.branches 'liubin0329/for-github-api-test'

#pp branches

commits = client.commits 'liubin0329/for-github-api-test'


commits.each { |c|
  puts "sha #{c.sha}"
  puts "message #{c.commit.message}"
  puts "html_url #{c.html_url}"
}

