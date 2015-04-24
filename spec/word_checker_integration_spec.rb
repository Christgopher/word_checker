require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expectations, false)

describe('the word check path', {:type => :feature}) do
  it('checks the number of instances of a word in a sentence') do
    visit('/')
    fill_in('user_word', :with => 'monkey')
    fill_in('user_sentence', :with => 'monkey is a money, making, monkey: monkey!')
    click_button('Get the count!')
    expect(page).to have_content('3 instances of that word')
  end
end
