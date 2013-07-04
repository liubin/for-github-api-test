for-github-api-test
===================

## 1. gem install octokit

## 2. exec in shell:

$ export GITHUB_LOGIN=liubin0329

$ export GITHUB_TOKEN=18ed

## 3. ./test.rb

## 4. tips

get commits in all branches

```ruby
branches = client.branches 'liubin0329/for-github-api-test'

branches.each { |b|
  client.commits('liubin0329/for-github-api-test',nil,{:sha => b.name})
}

```
