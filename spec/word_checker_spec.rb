require('rspec')
require('word_checker')

describe('String#wwrd_checker') do
  it('checks if a string appears in itself') do
    expect(("monkey").word_checker("monkey")).to(eq(1))
  end

  it('counts instances of word in sentence') do
    expect(("monkey is a money making monkey").word_checker("monkey")).to(eq(2))
  end

  it('deals with commas and other puncation') do
    expect(("monkey is a money, making, monkey: monkey!").word_checker("monkey")).to(eq(3))
  end
end
