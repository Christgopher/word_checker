require('rspec')
require('word_checker')

describe('String#word_checker') do
  it('checks if a string counts itself as an instance') do
    expect(("monkey").word_checker("monkey")).to(eq(1))
  end

  it('counts instances of word in sentence') do
    expect(("monkey is a money making monkey").word_checker("monkey")).to(eq(2))
  end

  it('deals with commas and other punctuation') do
    expect(("monkey is a money, making, monkey: monkey!").word_checker("monkey")).to(eq(3))
  end
end
