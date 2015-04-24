require('rspec')
require('word_checker')

describe('String#wwrd_checker') do
  it('checks if a string appears in itself') do
    expect(("monkey").word_checker("monkey")).to(eq(1))
  end
end
