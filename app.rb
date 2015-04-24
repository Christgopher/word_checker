require('sinatra')
require('sinatra/reloader')
require('./lib/word_checker')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/inputs') do
  user_word = params.fetch("user_word")
  user_sentence = params.fetch("user_sentence")
  @word_count = user_sentence.word_checker(user_word)
  erb(:count)
end
